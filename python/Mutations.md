Problem
==

We have seen that lists are mutable (they can be changed), and tuples are immutable (they cannot be changed).

Let's try to understand this with an example.

You are given an immutable string, and you want to make changes to it.

### Task
Read a given string, change the character at a given index and then print the modified string.

### Function Description

Complete the mutate_string function in the editor below.

mutate_string has the following parameters:

* string string: the string to change
* int position: the index to insert the character at
* string character: the character to insert

Returns

string: the altered string

Solution
==
The string is converted to a list. The new character is added to the list, and then it's joined back to a string.

~~~sql
def mutate_string(string, position, character):
    l = list(string)
    l[position] = character
    string = ''.join(l)
    return string

if __name__ == '__main__':
    s = input()
    i, c = input().split()
    s_new = mutate_string(s, int(i), c)
    print(s_new)


~~~
