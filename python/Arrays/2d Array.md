Problem
==
here are  hourglasses in . An hourglass sum is the sum of an hourglass' values. 
Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum. The array will always be 6 x 6

### Sample input 
```
1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0
```

### These are the following hour glases:

![image](https://user-images.githubusercontent.com/15948247/154254643-c8e71737-1afc-449c-8d52-261a3f870c4c.png)


### Sample Output

```
19
```

Solution
==

This problem consists of a 'window' that slides across the matrix in a 3 X 1 X 3 arrangement. Since length of the window will always be 3, it must always stop 2 indexes away
from the end of the matrix. Thus, arr-2 has been baked into the for loop. 

The code that creates the sum is finding the position in the array at each section of the window. Each time the window moves, the sum of all of the indexes are added
to a list. Finally, the maximum value is extracted from the list. 


~~~python
#!/bin/python3

import math
import os
import random
import re
import sys
# 1. iterate like so:
# 1. 
#   i = (0-2), (1), (0-2)
#   i = (1-3), (2), (1-3)


def hourglassSum(arr):
    # I used these variables so the code is easier to read. 
    num_rows = len(arr)
    num_cols = len(arr[1])
    # first let's take a look at how this will print
    # The range is -2 because the window will stop moving at the 3rd index from the last
    for i in range(num_rows -2) :
        for j in range(num_cols - 2):
            # what is the shape of the array?
            print(arr[i][j], arr[i][j + 1], arr[i][j+2])
            print(" ", arr[i+1][j+1])
            print(arr[i+2][j], arr[i+2][j+1], arr[i+2][j+2])
            print("-------------")

# Actual Answer
def hourglassSum(arr):
    num_rows = len(arr)
    num_cols = len(arr[1])
    sums = []
    for i in range(num_rows -2) :
        for j in range(num_cols - 2):
            sums.append((arr[i][j] + arr[i][j + 1] + arr[i][j+2]) +
            arr[i+1][j+1] +
            (arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]))
    
    return max(sums)            
            
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    arr = []

    for _ in range(6):
        arr.append(list(map(int, input().rstrip().split())))

    result = hourglassSum(arr)

    fptr.write(str(result) + '\n')

    fptr.close()


~~~
