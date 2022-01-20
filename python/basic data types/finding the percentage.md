Problem
==
The provided code stub will read in a dictionary containing key/value pairs of name:[marks] for a list of students. 
Print the average of the marks array for the student name provided, showing 2 places after the decimal.

### Sample Input
```
3
Krishna 67 68 69
Arjun 70 98 63
Malika 52 56 60
Malika
```
### Sample Output
```
56.00
```

Solution
==
This solution uses the key in the dictionary to find the score values, the average of the scores is taken

~~~python
if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
        # Student Marks: {'Krishna': [67.0, 68.0, 69.0], 'Arjun': [70.0, 98.0, 63.0],   'Malika': [52.0, 56.0, 60.0]} student_marks
    query_name = input()
    for key, value in student_marks.items():
        if key == query_name:
            a =(sum(value)/3)
            print("%.2f" % a)
~~~
