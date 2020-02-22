class queue:
    def __init__(self):
        self.receptacle = []
    def size(self):
        return len(self.receptacle)
    def front(self):
        return self.receptacle[0]
    def push(self,value):
        self.receptacle.append(value)
    def pop(self):
        self.receptacle.pop(0)
    def empty(self):
        return self.size() == 0