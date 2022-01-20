Problem
==
This tool returns  length subsequences of elements from the input iterable allowing individual elements to be repeated more than once.

Combinations are emitted in lexicographic sorted order. So, if the input iterable is sorted, the combination tuples will be produced in sorted order

### Input

```
HACK 2
```
### Output

```
AA
AC
AH
AK
CC
CH
CK
HH
HK
KK
```

Solution
==
First, clean up the data to remove spaces and numbers.
Then sort the word so the tuples appear in alphabetical order (AH vs HA)
Then list comprehension is used to make the tuples into a string, so it looks like HA instead of ('H', 'A')

~~~python
from itertools import combinations_with_replacement
from itertools import combinations


# Enter your code here. Read input from STDIN. Print output to STDOUT
word ,ln = input().split()
word = str(word)
word = word.replace(" ", "")
word = sorted(''.join([i for i in word if not i.isdigit()]))
ln = int(ln)
foo = sorted([''.join(i)for i in list(combinations_with_replacement(word,ln))])
for i in foo:
    print(i)
~~~
