import json
from utils import symbolResolver
from CallGraphDepicter import DrawPic

assembleCode = []
symbolTable = []
bondMap = {}


def Input(fileName):
    global assembleCode
    with open(fileName, 'r') as assemble:
        assembleCode = assemble.readlines()
    for i in range(len(assembleCode)):
        assembleCode[i] = assembleCode[i].strip()

def Build():
    global assembleCode, symbolTable
    symbolResolver.SymbolScanner(assembleCode, symbolTable)
    symbolResolver.BondResolver(assembleCode,symbolTable,bondMap)

def Generation():
    jsonObj = {'entryPoint':symbolTable.index("main"),'symbolTable':symbolTable,'bondMap':bondMap}
    contentStr = json.dumps(jsonObj)
    with open("result.json","w") as f:
        f.write(contentStr)

def Main():
    global assembleCode
    FILENAME = 'Main.s'
    Input(FILENAME)
    Build()
    Generation()
    DrawPic("result.json","result.png")

if __name__ == '__main__':
    Main()