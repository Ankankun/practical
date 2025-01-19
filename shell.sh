Basic shell scripting:

1)Write a shell script program to find the sum of two numbers

echo enter a number
read x
echo enter a number
read y
sum=$(($x+$y))

2)Write a shell script to check whether a number is even or not from range 1 to 50.

for((i=1;i<=50;i++))
do
	if[$((i%2)) -eq 0]
then
		echo $i is even
	fi
done

3)Write a shell script to find average of n numbers.

echo enter the value of n
read n
sum = 0
echo enter the number
for((i=1;i<=$n;i++))
do
	read a
	sum =$((sum+a))
done
avg=$(echo $sum/$n | bc -l)
echo average is= $avg


4)Write a shell script to find the factorial of a number

echo enter a number
read num
fact = 1
while [$num -gt 1]
do
	fact = $((fact*num))
num = $((num-1))
done
echo $fact

5)Write a shell script to find a sum of n numbers using while loop

echo enter size
read N
i = 1
sum = 0
echo enter numbers
while [$i -le $N]
do
	read num
sum = $((sum+num))
i = $((i+1))
done
echo $sum

6)Write a check a number is prime or not

echo enter a number
read p
if [$p -lt 1] then
	echo $p is not a prime number
	exit |
fi
if [$((p%2)) -eq 0] then
	echo $p is not a prime number
	exit |
fi
for((i = 3;i<=$((p ** 0.5));i+=2)) do
	if($((p%i)) -eq 0) then
		echo $p is not a prime number
		exit |
	fi
done
echo $p is  a prime number


More Shell Programming:
1)write a shell script program to generate the Fibonacci series

#!/bin/bash
echo enter number of terms
read n
a=0
b=1
echo -n “$a”
echo -n “$b”
echo Fibonacci series
for((i=0;i<n;i++))
do
	fn=$((a+b))
	a=$b
	b=$fn
	echo -n “$a” 
done
echo

2)write a shell script program to print the following pattern using nested for loop
1
2 2
3 3 3
4 4 4 4
5 5 5 5 5

#!/bin/bash
for i in {1..5}
do
	for((j=1;j<=i;j++))
	do
		echo -n “$i”
	done
	echo ””
done

3)write a shell script program to find reverse of a number.

#!/bin/bash
echo enter a number
read num
rev = 0
while [$num -gt 0] do
d = $((num % 10))
rev = $((rev*10+d))
num=$((num/10))
done
echo Reverse is: $rev

4)write a shell script program to find the length of a string

#!/bin/bash
echo enter a string
read str
len = ${#str}
echo Length is: $len

5)write a program to find the square root of a number.

#!/bin/bash
echo enter a number
read num
s = $(echo “scale=4; sqrt($n)” | bc)
echo square root of $n is $s

6)write a shell script program to find largest of three numbers

#!/bin/bash
echo enter 1st number
read n1
echo enter 2nd number
read n2
echo enter 3rd number
read n3
L = $n1
if [$n2 -gt $L] then
	L=$n2
fi
if [$n3 -gt $L] then
	L=$n3
fi
echo Largest: $L
