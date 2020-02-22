import json
import pygraphviz as pyg
from utils.Queue import *
from utils.cppfiltInterface import getOriginFuncName

def Drawer(entryPoint, symbolTable, bondMap, picName):
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
        visited[callerID] = True
        if not str(callerID) in bondMap:
            continue
        for calleeID in bondMap[str(callerID)]:
            g.add_edge(getOriginFuncName(symbolTable[callerID]), getOriginFuncName(symbolTable[calleeID]))
            if not calleeID in visited:
                q.push(calleeID)
    g.layout(prog='dot')
    g.draw(picName)

def DrawPic(fileName,picName):
    with open(fileName,'r') as f:
        jsonObj = json.loads(f.read())
    entryPoint = jsonObj['entryPoint']
    symbolTable = jsonObj['symbolTable']
    bondMap = jsonObj['bondMap']
    Drawer(entryPoint,symbolTable,bondMap,picName)

def Main():
    global assembleCode
    FILENAME = 'result.json'
    PICNAME = 'result.png'
    DrawPic(FILENAME,PICNAME)

if __name__ == '__main__':
    Main()