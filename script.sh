#clear content of the text file before running the script
 >output.txt

 #Begin the survey
 echo "pick your favourite bevarage between these:"
 echo -n "product1, "
 echo -n "product2, "
 echo -n "product3, "
 read fv 
 #case statement
case $fv in
"product1")
    echo "Excellent choice"
    read -p "rate it from one  to ten " rati
     if [[ $rati -lt 8 ]] ; then
        echo "That's not satisfactory"
    else
        echo "Very good"
    fi 
;;

"product2")
    echo "Beautiful choice"
    #read -p "on a scale of 1-10, how much do you love ${fv}?" othersrating
     read -p "rate it from one  to ten " rati
     if [[ $rati -lt 8 ]] ; then
        echo "That's not satisfactory"
    else
        echo "Very good"
    fi 
;;

"product3")
     echo "nice choice"
    #read -p "on a scale of 1-10, how much do you love ${fv}?" othersrating
     read -p "rate it from one  to ten " rati
     if [[ $rati -lt 8 ]] ; then
        echo "That's not satisfactory"
    else
        echo "Very good"
    fi 
;;

*)

echo "This isn't part of the listed options, start again"
 
esac

 #get the output of the survey and store it in a .txt file
 if [[ $rati -ne " " ]]; then
    echo "SURVEY RESULT" >> output.txt
    echo "The user has completed this survey and made a choice of the product $fv with a rating score of $rati" >> output.txt
 else
    echo "There has been an error please re-run the script"
 fi
    
