from utils.Exceptions import *

def SymbolScanner(assembleCode, symbolTable):
    for assembleLine in assembleCode:
        if not assembleLine.startswith('.') and assembleLine.endswith(":"):
            symbolTable.append(assembleLine[:-1])

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
    for assembleLine in assembleCode:
        if not assembleLine.startswith('.') and assembleLine.endswith(":"):
            curFunctionStr = assembleLine[:-1]
            continue
        instruction = assembleLine.split("\t")
        if instruction[0].lower() == 'call':
            if curFunctionStr is not None:
                if not symbolTable.count(instruction[1]):
                    symbolTable.append(instruction[1])
                BondMapInserter(symbolTable,bondMap,curFunctionStr,instruction[1])
            else:
                raise CallOutOfProcException
