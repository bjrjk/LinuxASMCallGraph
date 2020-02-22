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

def getOriginFuncName(assembleFuncName):
    assembleFuncName = strFilter(assembleFuncName)
    flagPLT = False
    if assembleFuncName.endswith("@PLT"):
        flagPLT = True
        assembleFuncName = assembleFuncName[:-4]
    result = os.popen("c++filt %s" % (assembleFuncName))
    result = result.read().strip()
    if flagPLT:
        result = "External Function: " + result
    return result