class Entry:
    def __init__(self):
        self._queue = []
        self.size = 0
        

    def enter(self, passport_number):
        self._queue.append(passport_number)

    def leave(self):
        first = self._queue[0]
        del self._queue[0]
        return first

entry = Entry()
entry.enter("AB54321")
entry.enter("UK32032")
print(entry.leave())
print(entry.leave())