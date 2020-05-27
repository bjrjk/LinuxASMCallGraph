import argparse
import json

from CallGraph.CallGraphDepicter import DrawPic
from CallGraph.utils import symbolResolver

assembleCode = []
symbolTable = []
bondMap = {}

parser = argparse.ArgumentParser(usage='%(prog)s [options] <file>')
parser.add_argument('--enable-stl', '-stl', dest='stl', type=bool, default=False, required=False, nargs="?",
                    help='Draw Call Graphs of C++ Standard Library.')
parser.add_argument('--enable-plt', '-plt', dest='plt', type=bool, default=False, required=False, nargs='?',
                    help='Draw Call Graphs of External Functions like puts and printf in libc.')
parser.add_argument('--file', '-f', dest='filename.s', metavar='entry file',required=True)
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
