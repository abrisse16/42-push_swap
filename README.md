<div align=center>

# push_swap

### 42 Common Core / circle #2
<i>This project involves sorting data on a stack, with a limited set of instructions, and the smallest number of actions. To make this happen, we have to manipulate various sorting algorithms and choose the most appropriate solution(s) (out of many) for optimized data sorting.</i>

##

### Final grade
[![abrisse's 42 push_swap Score](https://badge42.vercel.app/api/v2/cl1rqvecz002109l7rv0oprry/project/2620561)](https://github.com/JaeSeoKim/badge42)

### Subject
English version [here](https://cdn.intra.42.fr/pdf/pdf/90131/en.subject.pdf)
<br>
French version [here](https://cdn.intra.42.fr/pdf/pdf/90132/fr.subject.pdf)

</div>

---

## Table of contents

- [The project](#the-project)
	- [Description](#description)
	- [Algorithm](#algorithm)
	- [Bonus](#bonus)
- [Usage](#usage)
- [Resources, documentation and references](#resources-documentation-and-references)

## The project

The <i>push_swap</i> project is a very simple and highly effective algorithm project : data must be sorted.

We have at our disposal a set of int values, 2 stacks and a set of instructions to manipulate both stacks. The program must calculate and display on the standard output the smallest list of Push swap language instructions that sorts the integer received as arguments.

### Description

We have two stacks named <i>A</i> and <i>b</i> :
- The stack <i>A</i> contains a random number of either positive or negative numbers without any duplicates.
- The stack <i>B</i> is empty.

We have the following operations at our disposal :
- `sa` : swap <i>A</i> - swap the first 2 elements at the top of stack <i>A</i>. Do nothing if there is only one or no elements.
- `sb` : swap <i>B</i> - swap the first 2 elements at the top of stack <i>B</i>. Do nothing if there is only one or no elements.
- `ss` : `sa` and `sb` at the same time.
- `pa` : push <i>A</i> - take the first element at the top of <i>B</i> and put it at the top of <i>A</i>. Do nothing if <i>B</i> is empty.
- `pb` : push <i>B</i> - take the first element at the top of <i>A</i> and put it at the top of <i>B</i>. Do nothing if <i>A</i> is empty.
- `ra` : rotate <i>A</i> - shift up all elements of stack <i>A</i> by 1. The first element becomes the last one.
- `rb` : rotate <i>B</i> - shift up all elements of stack <i>B</i> by 1. The first element becomes the last one.
- `rr` : `ra` and `rb` at the same time.
- `rra` : reverse rotate <i>A</i> - shift down all elements of stack <i>A</i> by 1. The last element becomes the first one.
- `rrb` : reverse rotate <i>B</i> - shift down all elements of stack <i>B</i> by 1. The last element becomes the first one.
- `rrr` : `rra` and `rrb` at the same time.

### Bonus

The bonus is to write a program named `checker` which will check if the list of instruction given by `push_swap` is valid for the list of integers given as argument.


## How it Works : the Algorithm

<p align=center>
	🚧 UNDER CONSTRUCTION 🚧
</p>

## Usage

Clone this repository :

```sh
git clone https://github.com/abrisse16/42-push_swap.git path/to/repository
```

In your local repository, run `make`

To run `push_swap`, use the following command :

```sh
./push_swap <list_of_integers>
```

<br>

For the bonus, run `make bonus` and use the following command :

```sh
./checker <list_of_integers>
```

Then, give the list of instructions to `checker` on the standard input. Press `CTRL + D` to end the input and see the result.

<br>

To use `push_swap` and `checker` at the same time, use the following command :

```sh
ARG="<list_of_integers>"; ./push_swap $ARG | ./checker $ARG
```

## Resources, documentation and references

- Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest and Clifford Stein. <i>Introduction to Algorithms</i>(3rd ed.). (MIT Press, 2009)
- [Sorting algorithms](https://www.geeksforgeeks.org/sorting-algorithms/) (GeeksforGeeks)
- [Sorting algorithms animations](https://www.cs.usfca.edu/~galles/visualization/ComparisonSort.html) (University of San Francisco)
- [Push_swap Tutorial](https://medium.com/nerd-for-tech/push-swap-tutorial-fa746e6aba1e) (Medium)
- [Push_Swap: The least amount of moves with two stacks](https://medium.com/@jamierobertdawson/push-swap-the-least-amount-of-moves-with-two-stacks-d1e76a71789a) (Medium)
- [Push_swap Tester](https://github.com/louisabricot/push_swap_tester) : test the performance of push_swap program

---
<div align=center>
	<a href="mailto:abrisse@student.42.fr">abrisse@student.42.fr</a>
</div>