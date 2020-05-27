import json
from CallGraph.utils.Queue import *
from CallGraph.utils import getOriginFuncName, isPLT, isNotSTL


def Drawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag, drawer):
    symbolCount = len(symbolTable)
    if drawer == 'igraph':
        import igraph
        g = igraph.Graph(directed=True)
        g.add_vertices(symbolCount)
        g.vs['name'] = [getOriginFuncName(s) for s in symbolTable]
    else:
        import pygraphviz as pyg
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
            if drawer == 'igraph':
                g.add_edge(int(callerID), int(calleeID))
            else:
                g.add_edge(getOriginFuncName(symbolTable[callerID]), getOriginFuncName(symbolTable[calleeID]))
            if calleeID not in visited:
                q.push(calleeID)
    if drawer == 'igraph':
        picSize = 20 * symbolCount
        vertexColors = ['blue'] * symbolCount
        vertexColors[entryPoint] = 'red'
        style = {
            'vertex_label': g.vs['name'],
            'bbox': (0, 0, picSize, picSize),
            'layout': g.layout('lgl'),
            'vertex_color': vertexColors,
            'vertex_label_dist': 1
        }
        igraph.plot(g, picName, **style)
    else:
        g.layout(prog='dot')
        g.draw(picName)


def DrawPic(fileName, picName, DrawPLTFlag, DrawSTLFlag, drawer):
    with open(fileName, 'r') as f:
        jsonObj = json.loads(f.read())
    entryPoint = jsonObj['entryPoint']
    symbolTable = jsonObj['symbolTable']
    bondMap = jsonObj['bondMap']
    Drawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag, drawer)


def Main():
    global assembleCode
    FILENAME = 'result.json'
    PICNAME = 'result.png'
    DrawPic(FILENAME, PICNAME, False, False, 'pygraphviz')


if __name__ == '__main__':
    Main()
