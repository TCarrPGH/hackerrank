Problem
==

Given an integer, , perform the following conditional actions:

1. If  is odd, print Weird
2. If  is even and in the inclusive range of  to , print Not Weird
3. If  is even and in the inclusive range of  to , print Weird
4. If  is even and greater than , print Not Weird

Solution
==
~~~python
if __name__ == '__main__':
    n = int(input().strip())
    if n % 2 != 0:
        print("Weird")
    elif (n % 2==0) and (n>=2 and n<=5):
        print("Not Weird")
    elif (n % 2==0) and (n>=6 and n<=20):
        print("Weird")
    elif (n % 2==0) and n > 20:
        print("Not Weird")
        
~~~
