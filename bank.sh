
initial_balance=1000
total_deposit=0
total_withdraw=0

while true; do
echo "============================="
echo "Welcome to the PIITS Bank"
echo "1.Deposit"
echo "2.Withdraw"
echo "3.Check Balance"
echo "4.Exit"
echo "5.Statement"
echo "=============================="

read -p "Choose an option:" option


case $option in

1)
read -p "Enter amount to deposit: " deposit
initial_balance=$((initial_balance + deposit))
total_deposit=$((total_deposit + deposit))
echo "Deposited $deposit"
echo "New balance: $initial_balance"
;;

2)
read -p "Enter amount to withdraw: " withdraw
if (( withdraw <= initial_balance )); then
    initial_balance=$((initial_balance - withdraw))
    total_withdraw=$((total_withdraw + withdraw))
    echo "Withdrew $withdraw"
    echo "New balance: $initial_balance"
else
    echo "Insufficent fund!"
fi
;;    

3)
echo "Your current balance is: $initial_balance"
;;

4)
echo "Goodbye!! Thank you for using PIITS Bank"
exit 0
;;

5)
echo "\n-----------------------------"
echo "      Account Statement" 
echo "-----------------------------"
echo "Total Deposit : $total_deposit"
echo "Total Withdraw: $total_withdraw"
echo "Current Amount: $initial_balance"
echo "----------------------------\n"
;;

*)
#echo "You have choosed an invalid option! Please choose a valid option from below"
echo -e "\e[31mYou have choosed an invalid option! Please choose a valid option from below\e[0m"
;;

esac
done
