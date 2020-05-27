import json, sys
from CallGraph.utils import symbolResolver
from CallGraph.CallGraphDepicter import DrawPic
import argparse

assembleCode = []
symbolTable = []
bondMap = {}

parser = argparse.ArgumentParser(usage='%(prog)s [options] -f <file>')
parser.add_argument('--enable-stl', '-stl', action="store_true", dest='stl', default=False, required=False, 
                    help='Draw Call Graphs of C++ Standard Library.')
parser.add_argument('--enable-plt', '-plt', action="store_true", dest='plt', default=False, required=False, 
                    help='Draw Call Graphs of External Functions like puts and printf in libc.')
parser.add_argument('--file', '-f', dest='file', metavar='filename.s', required=True, 
                    help='Assembly File Name.')
args = parser.parse_args()


def Input(fileName):
    global assembleCode
    with open(fileName, 'r') as assemble:
        assembleCode = assemble.readlines()
    for i in range(len(assembleCode)):
        assembleCode[i] = assembleCode[i].strip()


def Build():
    global assembleCode, symbolTable
    symbolResolver.SymbolScanner(assembleCode, symbolTable)
    symbolResolver.BondResolver(assembleCode, symbolTable, bondMap)


def Generation(resultName):
    jsonObj = {'entryPoint': symbolTable.index("main"), 'symbolTable': symbolTable, 'bondMap': bondMap}
    contentStr = json.dumps(jsonObj)
    with open(resultName, "w") as f:
        f.write(contentStr)


def Main():
    global assembleCode
    PLTFlag = args.plt is not False
    STLFlag = args.stl is not False
    fileName:str = args.file
    if not fileName.lower().endswith('.s'):
        Help()
        exit(1)
    Input(fileName)
    Build()
    name = fileName[:-2]
    Generation(name + ".json")
    DrawPic(name + ".json", name + ".png", PLTFlag, STLFlag)


def Help():
    parser.print_help()


if __name__ == '__main__':
    Main()
