import json,sys
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

def Generation(resultName):
    jsonObj = {'entryPoint':symbolTable.index("main"),'symbolTable':symbolTable,'bondMap':bondMap}
    contentStr = json.dumps(jsonObj)
    with open(resultName,"w") as f:
        f.write(contentStr)

def Main(fileName,STLFlag,PLTFlag):
    global assembleCode
    Input(fileName)
    Build()
    name = fileName.split(".")[0]
    Generation(name+".json")
    DrawPic(name+".json",name+".png",PLTFlag,STLFlag)

def Help():
    print("Usage: python3 %s [--help] [--enable-stl] [--enable-plt] filename.s" % sys.argv[0])
    print("Options:")
    print("--help:\tShow this help information.")
    print("--enable-stl:\tDraw Call Graphs of C++ Standard Library.(Default Disabled)")
    print("--enable-plt:\tDraw Call Graphs of External Functions like puts and printf in libc.(Default Disabled)")

if __name__ == '__main__':
    argc = len(sys.argv)
    if argc < 2 or "--help" in sys.argv:
        Help()
    else:
        STLFlag = False
        PLTFlag = False
        if "--enable-stl" in sys.argv: STLFlag = True
        if "--enable-plt" in sys.argv: PLTFlag = True
        fileName = None
        for elem in sys.argv:
            if elem.lower().endswith(".s"):
                fileName = elem
                break
        if fileName == None:
            print("Incorrect Input.")
            Help()
        else:
            Main(fileName,STLFlag,PLTFlag)
