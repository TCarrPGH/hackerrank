Problem
===
Given the names and grades for each student in a class of  students, store them in a nested list and print the name(s) of any student(s) having the second lowest grade.

Note: If there are multiple students with the second lowest grade, order their names alphabetically and print each name on a new line.

Example

The ordered list of scores is , so the second lowest score is . There are two students with that score: . Ordered alphabetically, the names are printed as:

```
5
Harry
37.21
Berry
37.21
Tina
37.2
Akriti
41
Harsh
39
```
Solution
===



~~~python

if __name__ == '__main__':
    l = []
    sorted_names = []
    for _ in range(int(input())):
            name = input()
            score = float(input())
            l.append([score, name])
    
    # Sort the list by the scores
    lst = sorted(l, key = lambda x: x[0])
    # set the second lowest grade 
    snd_lowest_grade = 0
    lowest_grade = lst[0][0]
    for j in lst:
        if j[0] == lowest_grade:
            continue
        # look in the list for the next highest grade and then break the loop once it's found
        if j[0] > lowest_grade:
            snd_lowest_grade += j[0]
            break
    # Create a list of all of the 2nd worst grades in the calss
    for j in lst:
        if j[0] == snd_lowest_grade:
            sorted_names.append(j[1])
            
    # and sort them in alphabetical order
    for i in sorted(sorted_names):
        print(i)

        
test_case1 = [['Rachel','-50'],['Mawer','-50'],['Sheen','-50'],['Shaheen','null'],['null','51']]

~~~
