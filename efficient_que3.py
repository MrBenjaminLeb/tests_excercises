class Entry:
    def __init__(self):
        self.persons = []
        self.index = 0

    def enter(self, passport_number):
        self.persons.append(passport_number)
      

    def leave(self):
        obj = self.persons[self.index] 
        
        self.persons[self.index] = None
        self.index += 1
        return obj      
       
       
entry = Entry()
entry.enter("AB54321")
entry.enter("UK32032")
print(entry.leave())
print(entry.leave())