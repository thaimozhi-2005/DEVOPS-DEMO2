#!/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2

sum=$(echo "$num1 + $num2" | bc)
dub=$(echo "$num1 - $num2" | bc)
mul=$(echo "$num1 * $num2" | bc)

if [ "$num2" -eq 0 ]; then
  echo "Division by zero is not allowed."
else
  div=$(echo "scale=2; $num1 / $num2" | bc) 
fi

echo "Sum: $sum"
echo "Difference: $dub"
echo "Product: $mul"
if [ "$num2" -ne 0 ]; then
  echo "Quotient: $div"
fi
