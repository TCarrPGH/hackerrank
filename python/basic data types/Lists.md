Problem
==

Consider a list (list = []). You can perform the following commands:

* insert i e: Insert integer  at position .
* print: Print the list.
* remove e: Delete the first occurrence of integer .
* append e: Insert integer  at the end of the list.
* sort: Sort the list.
* pop: Pop the last element from the list.
* reverse: Reverse the list.
I* nitialize your list and read in the value of  followed by  lines of commands where each command will be of the  types listed above.
Iterate through each command in order and perform the corresponding operation on your list.

Sample Input 
==

``` 
12
insert 0 5
insert 1 10
insert 0 6
print
remove 6
append 9
append 1
sort
print
pop
reverse
```

Solution
==

The l.append(input().split()) function takes multiple inputs and breaks it given a white space.
This list is iterated over to look for various words and preforms different functions.

~~~sql

import sys
if __name__ == '__main__':
    N = int(input())
    l = []
    l_mod =[]
    
    # Read in input, split values, and save to list
    for i in range(N):
        l.append(input().split())
    
    for i in range(N):
        if l[i][0] == "insert":
            l_mod.insert(int(l[i][1]), int(l[i][2]))
        elif l[i][0] == "print":
            print(l_mod)
        elif l[i][0] == "remove":
            l_mod.remove(int(l[i][1]))
        elif l[i][0] == "append":
            l_mod.append(int(l[i][1]))
        elif l[i][0] == "sort":
            l_mod.sort()
        elif l[i][0] == "pop":
            l_mod.pop()
        elif l[i][0] == "reverse":
            l_mod.reverse()
    
~~~
