#!/bin/bash

colorgood='${color orange}'
colorend='${color}'
alignr='${alignr}'
alignc='${alignc}'

hour=$(date +%H)
minute=$(date +%M)
timer=$(($hour*60+$minute))

fajrprayer=`ipraytime | awk 'NR==12 {print $2}'`
fajrH=`ipraytime | awk 'NR==12 {print $2}' | cut -d ':' -f 1`
fajrM=`ipraytime | awk 'NR==12 {print $2}' | cut -d ':' -f 2`
fajr=$(($fajrH*60+$fajrM))

shurooqprayer=`ipraytime | awk 'NR==12 {print $3}'`
shurooqH=`ipraytime | awk 'NR==12 {print $3}'| cut -d ':' -f 1`
shurooqM=`ipraytime | awk 'NR==12 {print $3}'| cut -d ':' -f 2`
shurooq=$(($shurooqH*60+$shurooqM))

dhuhrprayer=`ipraytime | awk 'NR==12 {print $4}'`
dhuhrH=`ipraytime | awk 'NR==12 {print $4}'| cut -d ':' -f 1`
dhuhrM=`ipraytime | awk 'NR==12 {print $4}'| cut -d ':' -f 2`
dhuhr=$(($dhuhrH*60+$dhuhrM))

asrprayer=`ipraytime | awk 'NR==12 {print $5}'`
asrH=`ipraytime | awk 'NR==12 {print $5}'| cut -d ':' -f 1`
asrM=`ipraytime | awk 'NR==12 {print $5}'| cut -d ':' -f 2`
asr=$(($asrH*60+$asrM))

maghrebprayer=`ipraytime | awk 'NR==12 {print $6}'`
maghrebH=`ipraytime | awk 'NR==12 {print $6}'| cut -d ':' -f 1`
maghrebM=`ipraytime | awk 'NR==12 {print $6}'| cut -d ':' -f 2`
maghreb=$(($maghrebH*60+$maghrebM))

ishaprayer=`ipraytime | awk 'NR==12 {print $7}'`
ishaH=`ipraytime | awk 'NR==12 {print $7}'| cut -d ':' -f 1`
ishaM=`ipraytime | awk 'NR==12 {print $7}'| cut -d ':' -f 2`
isha=$(($ishaH*60+$ishaM))

booleanVariable=true
echo
if [ "$booleanVariable" == true -a  "$timer" -lt "$fajr" ] ; then
		booleanVariable=false    
    	echo $colorgood'Fajr:'$alignr$fajrprayer$colorend 
	echo

else
	echo 'Fajr:'$alignr$fajrprayer 
	echo

fi

if [ "$booleanVariable" == true -a  "$timer" -lt "$shurooq" ]; then
		booleanVariable=false
    	echo $colorgood'Shurooq:'$alignr$shurooqprayer$colorend 
	echo
	
else
	echo 'Shurooq:'$alignr$shurooqprayer 
	echo
	
fi

if [ "$booleanVariable" == true -a  "$timer" -lt "$dhuhr" ]; then
    	booleanVariable=false
    	echo $colorgood'Dhuhr:'$alignr$dhuhrprayer$colorend 
	echo
		
else
	echo 'Dhuhr:'$alignr$dhuhrprayer 
	echo
	
fi

if [ "$booleanVariable" == true -a  "$timer" -lt "$asr" ]; then
		booleanVariable=false
    	echo $colorgood'Asr:'$alignr$asrprayer$colorend 
	echo
		
else
	echo 'Asr:'$alignr$asrprayer 
	echo
	
fi

if [ "$booleanVariable" == true -a  "$timer" -lt "$maghreb" ]; then
    	echo $colorgood'Maghreb:'$alignr$maghrebprayer$colorend 
		booleanVariable=false
	echo
else
	echo 'Maghreb:'$alignr$maghrebprayer 
	echo
	
fi

if [ "$booleanVariable" == true -a  "$timer" -lt "$isha" ]; then
		booleanVariable=false
    	echo $colorgood'Isha:'$alignr$ishaprayer$colorend
	echo 
else
	echo 'Isha:'$alignr$ishaprayer 
	echo
fi
