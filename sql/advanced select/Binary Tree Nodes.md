Problem
==

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

* Root: If node is root node.
* Leaf: If node is leaf node.
* Inner: If node is neither root nor leaf node.

![image](https://user-images.githubusercontent.com/15948247/149822679-4b400ffc-b1fb-411a-b411-4eba1da07757.png)

Solution
==

1) If the parent column is null, the node == root
2) INNER: If this node appears in the in the parent column and is not node
3) LEAF: If this node never appears in the parent column

This case statement produces a list of nodes that appear in the parent column. If nodes appear in both columns they are inner.

~~~sql
SELECT 
    CASE 
    WHEN (P IS NULL) THEN CONCAT(N, " Root")
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, " Inner")
    ELSE CONCAT(N, " Leaf")
    END
FROM bst
ORDER BY N ASC;
~~~
