Please Pass the Coded Messages
==============================

You need to pass a message to the bunny workers, but to avoid detection, the code you agreed to use is... obscure, to say the least. The bunnies are given food on standard-issue plates that are stamped with the numbers 0-9 for easier sorting, and you need to combine sets of plates to create the numbers in the code. The signal that a number is part of the code is that it is divisible by 3. You can do smaller numbers like 15 and 45 easily, but bigger numbers like 144 and 414 are a little trickier. Write a program to help yourself quickly create large numbers for use in the code, given a limited number of plates to work with.

You have L, a list containing some digits (0 to 9). Write a function solution(L) which finds the largest number that can be made from some or all of these digits and is divisible by 3. If it is not possible to make such a number, return 0 as the solution. L will contain anywhere from 1 to 9 digits.  The same digit may appear multiple times in the list, but each element in the list may only be used once.

Languages
=========

To provide a Java solution, edit Solution.java
To provide a Python solution, edit solution.py

Test cases
==========
Your code should pass the following test cases.
Note that it may also be run against hidden test cases not shown here.

-- Java cases --
Input:
Solution.solution({3, 1, 4, 1})
Output:
    4311

Input:
Solution.solution({3, 1, 4, 1, 5, 9})
Output:
    94311

-- Python cases --
Input:
solution.solution([3, 1, 4, 1])
Output:
    4311

Input:
solution.solution([3, 1, 4, 1, 5, 9])
Output:
    94311

Solution
==========

I used itertools to find all combinations of a given number. After that I used some logic to see if the number was divisible by 3. I kept the highest number.
```
import itertools


def solution(l):
    n = len(l)
    s = sorted(l, reverse=True)
    num = ''.join(map(str, sorted(l, reverse=True)))
    temp = 0  # returns 0 if not divisible by 3
    # if the entire number is already divisible by 3, return to save time
    if int(num) % 3 == 0:
        return s

    if int(num) == 1:
        return 0

    if int(num) < 0:
        return 0

    if int(num) == 0:
        return 0
    # find all permutations of the list
    temp = 0
    for i in range(len(s)):
        a = itertools.combinations(s, i + 1)
        # print(list(a))
        for j in a:
            res = int(''.join(map(str, j)))
            if res % 3 == 0:
                if res > temp:
                    temp = res
    print(temp)



plates2 = [3, 1, 4, 1, 5, 9]
solution(plates2)
```
