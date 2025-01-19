Basic shell scripting:

1) Write a shell script program to find the sum of two numbers
#!/bin/bash

echo "Enter the first number:"
read x
echo "Enter the second number:"
read y

sum=$(($x + $y))
echo "The sum of $x and $y is $sum"



2) Write a shell script to check whether a number is even or not from range 1 to 50.

#!/bin/bash
for ((i=1; i<=50; i++))  
do  
  if [ $((i % 2)) -eq 0 ]; then  
    echo "$i is even"  
  fi  
done



3)Write a shell script to find average of n numbers.

#!/bin/bash  
echo "Enter the value of n:"  
read n  
sum=0  
echo "Enter the numbers:"  

for ((i=1; i<=n; i++)); do  
    read a  
    sum=$((sum + a))  # Fixed variable assignment here  
done  
avg=$((sum / n))  # Integer division for the average  
echo "Average is: $avg"



4)Write a shell script to find the factorial of a number

#!/bin/bash  
echo "Enter a number:"  
read num  
fact=1  # Fixed variable assignment here  

while [ $num -gt 1 ]; do  # Added space between [ and $  
    fact=$((fact * num))  # Fixed variable assignment  
    num=$((num - 1))      # Fixed variable assignment  
done  
echo $fact



5)Write a shell script to find a sum of n numbers using while loop

#!/bin/bash  
echo "Enter size:"  
read N  
i=1          # Corrected variable assignment  
sum=0        # Corrected variable assignment  
echo "Enter numbers:"  
while [ $i -le $N ]; do  # Added space between [ and $ and after ]  
    read num  
    sum=$((sum + num))  # Corrected variable assignment  
    i=$((i + 1))        # Corrected variable assignment  
done  
echo $sum



6)Write a check a number is prime or not

#!/bin/bash  
echo "Enter a number:"  
read p
if [ $p -lt 2 ]; then  
    echo "$p is not a prime number"  
    exit  
fi  
if [ $((p % 2)) -eq 0 ]; then  
    if [ $p -ne 2 ]; then  # Check if p is not equal to 2  
        echo "$p is not a prime number"  
        exit  
    fi  
fi  
for ((i = 3; i*i <= p; i += 2)); do  # Use 'i*i' instead of 'i<=$((p ** 0.5))'  
    if [ $((p % i)) -eq 0 ]; then  
        echo "$p is not a prime number"  
        exit  
    fi  
done  
echo "$p is a prime number"




More Shell Programming:

1)write a shell script program to generate the Fibonacci series

#!/bin/bash 
echo "Enter number of terms:"  
read n  
a=0  
b=1  
echo "Fibonacci series:"  
for ((i = 0; i < n; i++)); do  
    echo -n "$a "  
    fn=$((a + b))  
    a=$b  
    b=$fn  
done  
echo  # For a new line after the series



2)write a shell script program to print the following pattern using nested for loop
1
2 2
3 3 3
4 4 4 4
5 5 5 5 5

#!/bin/bash  

for i in {1..5}; do  
    for ((j = 1; j <= i; j++)); do  
        echo -n "$i "  # Use standard quotes   
    done  
    echo ""  # Correctly formatted to add a newline after each row  
done



3)write a shell script program to find reverse of a number.

#!/bin/bash  
echo "Enter a number:"  
read num  
rev=0  # Correct variable assignment without spaces  
while [ $num -gt 0 ]; do  # Added spaces for correct syntax  
    d=$((num % 10))       # Correct variable assignment without spaces  
    rev=$((rev * 10 + d)) # Correct variable assignment without spaces  
    num=$((num / 10))     # Correct variable assignment without spaces  
done  
echo "Reverse is: $rev"



4)write a shell script program to find the length of a string

#!/bin/bash  
echo "Enter a string:"  
read str  
len=${#str}  # Correct variable assignment without spaces  
echo "Length is: $len"




5)write a program to find the square root of a number.

#!/bin/bash  
echo "Enter a number:"  
read num  
s=$(echo "scale=4; sqrt($num)" | bc)  # Fixed variable name and removed spaces around '='  
echo "Square root of $num is $s"       # Correct variable name in the echo statement



6)write a shell script program to find largest of three numbers

#!/bin/bash  
echo "Enter 1st number:"  
read n1  
echo "Enter 2nd number:"  
read n2  
echo "Enter 3rd number:"  
read n3  
L=$n1  # Fixed variable assignment without spaces  

if [ $n2 -gt $L ]; then  # Added spaces in the brackets and the 'then' keyword  
    L=$n2  
fi  

if [ $n3 -gt $L ]; then  # Added spaces in the brackets and the 'then' keyword  
    L=$n3  
fi  
echo "Largest: $L"
