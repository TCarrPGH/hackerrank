Problem 
==

You are given a string  and width .
Your task is to wrap the string into a paragraph of width .

## Wrap has the following parameters:

* string string: a long string
* i int max_width: the width to wrap to
* string: a single string with newline characters ('\n') where the breaks should be

## Sample Input 
~~~
ABCDEFGHIJKLIMNOQRSTUVWXYZ
4
~~~

## Sample Output
~~~
ABCD
EFGH
IJKL
IMNO
QRST
UVWX
YZ
~~~

Solution
==
This solution uses a while loop that appends the max width to a string. Each time the loop iterates the window moves [max_width] places


~~~python
import textwrap

def wrap(string, max_width):
    count = 0
    str_end = True
    str = ''
    while str_end:
        str += (string[count:count + max_width]) + '\n'
        count += max_width
        if count >= len(string):
           break
            
    return str

if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)

~~~
