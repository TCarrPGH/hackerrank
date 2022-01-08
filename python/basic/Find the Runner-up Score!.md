Given the participants' score sheet for your University Sports Day, you are required to find the runner-up score. You are given  scores. 
Store them in a list and find the score of the runner-up.

Input Format

The first line contains . The second line contains an array   of  integers each separated by a space.

## Solution

First, sort the list, then iterate through the list and pick the second unique number in the list.

```
if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
    arr=sorted(arr,reverse=True)
    last = ""
    for i in range(len(arr)):
        if arr[i]==arr[0]:
            continue
        if last != i:
            print(arr[i])
            break
 ```
