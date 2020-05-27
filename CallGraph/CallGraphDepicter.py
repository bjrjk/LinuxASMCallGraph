import json
import pygraphviz as pyg
from CallGraph.utils.Queue import *
from CallGraph.utils import getOriginFuncName, isPLT, isNotSTL


def Drawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag):
    g = pyg.AGraph()
    g.add_node(getOriginFuncName(symbolTable[entryPoint]))
    visited = {}
    q = queue()
    q.push(entryPoint)
    while not q.empty():
        callerID = q.front()
        q.pop()
        if callerID in visited:
            continue
        if not DrawPLTFlag and isPLT(symbolTable[callerID]) or not DrawSTLFlag and isNotSTL(symbolTable[callerID]):
            continue
        visited[callerID] = True
        if not str(callerID) in bondMap:
            continue
        for calleeID in bondMap[str(callerID)]:
            if not DrawPLTFlag and isPLT(symbolTable[calleeID]) or not DrawSTLFlag and isNotSTL(symbolTable[calleeID]):
                continue
            g.add_edge(getOriginFuncName(symbolTable[callerID]), getOriginFuncName(symbolTable[calleeID]))
            if not calleeID in visited:
                q.push(calleeID)
    g.layout(prog='dot')
    g.draw(picName)


def DrawPic(fileName, picName, DrawPLTFlag, DrawSTLFlag):
    with open(fileName, 'r') as f:
        jsonObj = json.loads(f.read())
    entryPoint = jsonObj['entryPoint']
    symbolTable = jsonObj['symbolTable']
    bondMap = jsonObj['bondMap']
    Drawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag)


def Main():
    global assembleCode
    FILENAME = 'result.json'
    PICNAME = 'result.png'
    DrawPic(FILENAME, PICNAME, False, False)


if __name__ == '__main__':
    Main()
