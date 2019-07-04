def each_word(word):
    # reverse the string
    rev = word[::-1]
    if (word == rev):
        return True
    return False
    
def is_palindrome(word):
    # make it suitible for caseless comparison
    word = word.casefold()
    #split up the argument if multiple words are present
    words = word.split()
    for check in words:
        if each_word(check) == False:
            return False
        continue
    return True
        
    


print(is_palindrome('Deleveled'))

#for multiple words, various cases. only works for single words and lower case