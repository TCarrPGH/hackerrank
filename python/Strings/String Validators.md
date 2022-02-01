Problem 
==
Using python built in string methods, print the following:

1. In the first line, print True if  has any alphanumeric characters. Otherwise, print False.
2.  In the second line, print True if  has any alphabetical characters. Otherwise, print False.
3.  In the third line, print True if  has any digits. Otherwise, print False.
4.  In the fourth line, print True if  has any lowercase characters. Otherwise, print False.
5.  In the fifth line, print True if  has any uppercase characters. Otherwise, print False.


Solution
==


~~~python
if __name__ == '__main__':
    string = input()
    print(any(char.isalnum() for char in string))
    print(any([char.isalpha() for char in string]))
    print(any([char.isdigit() for char in string]))
    print(any([char.islower() for char in string]))
    print(any([char.isupper() for char in string]))
~~~
