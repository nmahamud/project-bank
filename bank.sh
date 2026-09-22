
initial_balance='$1000'

while true; do
echo "============================="
echo "Welcome to the PIITS Bank"
echo "1.Deposit"
echo "2.Withdraw"
echo "3.Check Balance"
echo "4.Exit"
echo "=============================="

read -p "Choose an option:" option


case $option in
1)
read -p "Deposit section has been selected"
;;

2)
read -p "Withdraw section has been selected"
;;

3)
echo "Your current balance is: $initial_balance"
;;

4)
echo "Goodbye!! Thank you for using PIITS Bank"
exit 0
;;

*)
#echo "You have choosed an invalid option! Please choose a valid option from below"
echo -e "\e[31mYou have choosed an invalid option! Please choose a valid option from below\e[0m"
;;

esac
done