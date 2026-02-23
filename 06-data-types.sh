#/bin/bash
number1=100
number2=200
TIMESTAMP=$(date)
echo "Scripte executed at $TIMESTAMP"
sum=$(($number1+$number2))
echo "sum of $number1 and $number2 is: $sum"