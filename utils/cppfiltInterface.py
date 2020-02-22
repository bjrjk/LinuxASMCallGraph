import os

def charCheck(char):
    acceptableCharList = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_@"
    if char in acceptableCharList:
        return char
    return ""

def strFilter(str):
    result = ""
    for elem in str:
        result += charCheck(elem)
    return result

def isPLT(assembleFuncName):
    assembleFuncName = strFilter(assembleFuncName)
    return assembleFuncName.endswith("@PLT")


def isNotSTL(assembleFuncName):
    funcName = getOriginFuncName(assembleFuncName)
    return funcName.startswith("std") or funcName.startswith("__gnu_cxx")

def getOriginFuncName(assembleFuncName):
    assembleFuncName = strFilter(assembleFuncName)
    flagPLT = False
    if assembleFuncName.endswith("@PLT"):
        flagPLT = True
        assembleFuncName = assembleFuncName[:-4]
    result = os.popen("c++filt -p %s" % (assembleFuncName))
    result = result.read().strip()
    if flagPLT:
        result = "External Function: " + result
    return result