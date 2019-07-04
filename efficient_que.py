class Entry:
    def __init__(self):
        self.persons = ['no passports in que']
        self.index = 0

    def enter(self, passport_number):
        self.persons.append(passport_number)
        self.index += 1

    def leave(self):
        if self.index > 0:
            person = self.persons[self.index]
            self.persons[self.index] = None
            self.index -= 1
            return person
        else:
            raise IndexError(self.persons[self.index])
       
    
entry = Entry()
entry.enter("AB54321")
entry.enter("UK32032")
print(entry.leave())
print(entry.leave())