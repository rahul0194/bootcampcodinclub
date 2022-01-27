read -p "Enter Your Key Here " random
salary=0
isFulltime=2
isParttime=1
isAbsent=0
perHourCost=100
logHours=8
               if [ $random -eq $isFulltime ]
               then
                   salary=$((logHours*perHourCost))
                   echo "Employee Joined As a Full-Time"
                   echo "Payment Is : $salary"
               elif [ $random -eq $isParttime ]
               then
                   salary=$((logHours*perHourCost))
                   salary=$((salary/2))
                   echo "Employee Joined As a Part-Time"
                   echo "Payment Is : $salary"
               elif [ $random -eq $isAbsent ]
               then
                   echo "Employee Absent"
                   echo "Payment Is : $salary"
               else
                   echo "Please Check Your Input :( It's Invalid ..."
               fi