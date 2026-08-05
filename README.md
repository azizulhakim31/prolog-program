# Prolog Programs

This repository contains a collection of Prolog programs that demonstrate fundamental concepts of logic programming and problem solving. Each program includes a query example at the top of the source file. The same queries are also listed below for quick reference.

## Programs

### 1. 4 Queen Problem
**File:** `4_queen_problem.pl`

**Query:**
```prolog
?- solve(Q), show_board(Q).
```

---

### 2. Addition and Multiplication of Two Numbers
**File:** `addition_and_multiplication_of_two_numbers.pl`

**Query:**
```prolog
?- start.
```

**Example Output:**
```text
Enter first number: 2
Enter second number: 3
Sum = 5
Product = 6
```

---

### 3. Finding the Largest and Smallest Element
**File:** `finding_the_largest_and_smallest_element.pl`

**Query:**
```prolog
?- start.
```

**Example Output:**
```text
Enter a list: [3,1,2,4]
Largest element is: 4
Smallest element is: 1
```

---

### 4. Reverse a List
**File:** `reverse_a_list.pl`

**Query:**
```prolog
?- start.
```

**Example Output:**
```text
Enter a list: [1,2,3,4]
Reversed list is: [4,3,2,1]
```

---

### 5. Count Number of Elements in a List
**File:** `count_number_of_elements_in_a_list.pl`

**Query:**
```prolog
?- start.
```

**Example Output:**
```text
Enter a list: [a,b,c]
Number of elements = 3
```

---

### 6. Breadth-First Search (BFS)
**File:** `breadth_first_search.pl`

**Query:**
```prolog
?- bfs(a, Path).
```

---

### 7. Depth-First Search (DFS)
**File:** `depth_first_search.pl`

**Query:**
```prolog
?- dfs(a, Path).
```

---

### 8. Traveling Salesman Problem (TSP)
**File:** `traveling_salesman_problem.pl`

**Query:**
```prolog
?- travel(london, Path, Cost).
```

---

## Requirements

- SWI-Prolog
- Visual Studio Code (optional)
- Prolog extension for VS Code (optional)

## How to Run

**1.** Open the project folder in Visual Studio Code.

**2.** Open the integrated terminal.

**3.** Start SWI-Prolog:

```bash
swipl
```

**4.** Load a program:

  ```prolog
  ?- ['filename.pl'].
  ```

Example:

```prolog
?- ['4_queen_problem.pl'].
```

**5.** Execute the corresponding query shown above.
