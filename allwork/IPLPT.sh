echo "Enter Your Fav Team Here "
echo "RCB CSK MI SRH RR KKR PBKS DC"
read teamName
rcbTeam=('Virat' 'Abd' 'Siraj')
miTeam=('Pollard' 'Rohit' 'Suryakumar')
IPL_YEAR=2021
MATCHES_PLAYED=14

position=0
win=0
lose=0
runRate=""
points=0
function captainMessage() {
         echo $1 "Is a Captain Of "$2
}
function bowlerMessage() {
         echo $1 "Is a Bowler Of "$2
}
function batsmanMessage() {
         echo $1 "Is a Batsman Of "$2
}
function rolesAndResponsibility() {
         if [ $1 == "RCB" ]
         then
             for player in ${rcbTeam[@]}
             do
                   if [ $player == "Siraj" ]
                   then
                       bowlerMessage $player $1
                   elif [ $player == "Abd" ]
                   then
                       batsmanMessage $player $1
                   else
                       captainMessage $player $1
                   fi
             done
         elif [ $1 == "MI" ]
         then
             for player in ${miTeam[@]}
             do
                   if [ $player == "Pollard" ]
                   then
                       bowlerMessage $player $1
                   elif [ $player == "Suryakumar" ]
                   then
                       batsmanMessage $player $1
                   else
                       captainMessage $player $1
                   fi
             done
         fi

}
function playoff() {
         if [ $1 -le 4 ]
         then
             echo $teamName Is Eligible For Playoffs
         else
             echo $teamName Is Not Eligible For Playoffs
         fi
}
function pointsCalculator() {
         lose=$((MATCHES_PLAYED-$2))
         points=$(($2*2))
         echo "IPL $IPL_YEAR"
         echo "Place Secured : $1"
         echo "Team Name : $teamName"
         echo "Number Of Matches Played : $MATCHES_PLAYED"
         echo "Won : $2 , Lost : $lose"
         echo "NRR : $3"
         echo "Points : $points"
         playoff $1
         rolesAndResponsibility $teamName
}
function error() {
    echo "Your Given Input Invalid , Please check the Format Below"
    echo "RCB CSK MI SRH RR KKR PBKS DC"
}
case $teamName in
   CSK)
      position=2
      win=9
      runRate="+0.455"
      pointsCalculator $position $win $runRate
      ;;
   MI)
      position=5
      win=7
      runRate="+0.116"
      pointsCalculator $position $win $runRate
      ;;
   RCB)
      position=3
      win=9
      runRate="-0.140"
      pointsCalculator $position $win $runRate
      ;;
   *)
     error
     ;;
esac