import argparse
import json

from CallGraph.CallGraphDepicter import DrawPic
from CallGraph.utils import symbolResolver

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
parser.add_argument('--drawer', '-d', dest='drawer', default='pygraphviz', choices=['pygraphviz', 'igraph'],
                    help='Specify a depicter to draw call graph. By default, callgraph uses pygraphviz.')

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
    fileName: str = args.file
    if not fileName.lower().endswith('.s'):
        Help(fileName)
        exit(1)
    Input(fileName)
    Build()
    name = fileName[:-2]
    Generation(name + ".json")
    DrawPic(name + ".json", name + ".png", PLTFlag, STLFlag, args.drawer)



def Help(fileName):
    print('Filename should end with \'.s\'. Your filename is: {}'.format(fileName))
    parser.print_help()


if __name__ == '__main__':
    Main()
