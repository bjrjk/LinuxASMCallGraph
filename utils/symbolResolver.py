from utils.ATTASMSyntax import *
from utils.Exceptions import *

def SymbolScanner(assembleCode, symbolTable):
    curFunctionStr = None
    for assembleLine in assembleCode:
        if not assembleLine.startswith('.') and assembleLine.endswith(":"):
            curFunctionStr = assembleLine[:-1]
            continue
        if assembleLine == ASMFunctionStart:
            symbolTable.append(curFunctionStr)
            continue

def BondMapInserter(symbolTable, bondMap, caller, callee):
    if not symbolTable.count(caller) or not symbolTable.count(callee):
        return
    callerID = symbolTable.index(caller)
    calleeID = symbolTable.index(callee)
    if callerID in bondMap:
        if not bondMap[callerID].count(calleeID):
            bondMap[callerID].append(calleeID)
    else:
        bondMap[callerID] = []
        bondMap[callerID].append(calleeID)


def BondResolver(assembleCode, symbolTable, bondMap):
    curFunctionStr = None
    inFunction = False
    for assembleLine in assembleCode:
        if not assembleLine.startswith('.') and assembleLine.endswith(":"):
            curFunctionStr = assembleLine[:-1]
            continue
        if assembleLine == ASMFunctionStart:
            inFunction = True
            continue
        if assembleLine == ASMFunctionEnd:
            inFunction = False
            continue
        instruction = assembleLine.split("\t")
        if instruction[0].lower() == 'call':
            if curFunctionStr is not None and inFunction:
                if not symbolTable.count(instruction[1]):
                    symbolTable.append(instruction[1])
                BondMapInserter(symbolTable,bondMap,curFunctionStr,instruction[1])
            else:
                raise CallOutOfProcException
