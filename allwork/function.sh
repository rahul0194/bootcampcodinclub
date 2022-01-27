read -p "Enter X " x
read -p "Enter Y " y
function add() {
       echo $(($1+$2))
}


ans="$(add $x $y)"
echo "Answer : $ans"