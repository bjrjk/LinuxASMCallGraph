class CallOutOfProcException(Exception):
    def __init__(self):
        pass
    def __str__(self):
        return 'The CALL instruction is out of a function! '