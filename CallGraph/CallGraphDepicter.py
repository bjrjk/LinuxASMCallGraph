import json
from CallGraph.utils.Queue import *
from CallGraph.utils import getOriginFuncName, isPLT, isNotSTL


def igraphDrawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag):
    import igraph
    symbolCount = 1
    originNameTable = [getOriginFuncName(s) for s in symbolTable]
    g = igraph.Graph(directed=True)
    visited = {}
    q = queue()
    q.push(entryPoint)
    g.add_vertex('main')
    while not q.empty():
        callerID = q.front()
        q.pop()
        if callerID in visited:
            continue
        if not DrawPLTFlag and isPLT(symbolTable[callerID]) or not DrawSTLFlag and isNotSTL(symbolTable[callerID]):
            continue
        visited[callerID] = True
        if str(callerID) not in bondMap:
            continue
        for calleeID in bondMap[str(callerID)]:
            if not DrawPLTFlag and isPLT(symbolTable[calleeID]) or not DrawSTLFlag and isNotSTL(symbolTable[calleeID]):
                continue

            symbolCount += 1
            if len(g.vs.select(name_eq=originNameTable[calleeID])) == 0:
                g.add_vertex(originNameTable[calleeID])
            g.add_edge(originNameTable[callerID], originNameTable[calleeID])
            if calleeID not in visited:
                q.push(calleeID)

    picSize = 20 * symbolCount if symbolCount > 10 else 200
    vertexColors = ['blue'] * symbolCount
    vertexColors[0] = 'red'
    style = {
        'vertex_label': g.vs['name'],
        'bbox': (0, 0, picSize, picSize),
        'layout': g.layout('lgl'),
        'vertex_color': vertexColors,
        'vertex_label_dist': 1,
        'margin': 30
    }
    igraph.plot(g, picName, **style)


def Drawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag):
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
            g.add_edge(getOriginFuncName(symbolTable[callerID]), getOriginFuncName(symbolTable[calleeID]))
            if calleeID not in visited:
                q.push(calleeID)
    g.layout(prog='dot')
    g.draw(picName)


def DrawPic(fileName, picName, DrawPLTFlag, DrawSTLFlag, drawer):
    with open(fileName, 'r') as f:
        jsonObj = json.loads(f.read())
    entryPoint = jsonObj['entryPoint']
    symbolTable = jsonObj['symbolTable']
    bondMap = jsonObj['bondMap']
    if drawer == 'igraph':
        igraphDrawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag)
    else:
        Drawer(entryPoint, symbolTable, bondMap, picName, DrawPLTFlag, DrawSTLFlag)


def Main():
    global assembleCode
    FILENAME = 'result.json'
    PICNAME = 'result.png'
    DrawPic(FILENAME, PICNAME, False, False, 'pygraphviz')


if __name__ == '__main__':
    Main()
