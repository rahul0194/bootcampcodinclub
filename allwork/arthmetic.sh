echo "Enter Your Arithmetic Operation Here"
echo "1.Add 2.Sub 3.Mul 4.Div"
read operation

read -p "Enter Your X Value " x
read -p "Enter Your Y Value " y
output=0
function logic() {
 case $3 in
   1)
      output=$(($1+$2))
      ;;
   2)
      output=$(($1-$2))
      ;;
   3)
      output=$(($1*$2))
      ;;
   4)
      output=$(($1/$2))
      ;;
   *)
     echo "Invalid"
     ;;
 esac
 echo "Answer : $output"
}
function errorMessage() {
         echo "Please Check Your Input , It's Invalid :("
}
if [ $operation -eq 1 ]
then
    logic $x $y $operation
elif [ $operation -eq 2 ]
then
    logic $x $y $operation
elif [ $operation -eq 3 ]
then
    logic $x $y $operation
elif [ $operation -eq 4 ]
then
    logic $x $y $operation
else
    errorMessage
fi