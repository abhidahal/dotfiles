#!/bin/bash

#initialize git
git init

# Set language to avoid problems with special characters in dates
LANG=en_us_8859_1

touch SaveTheWorld.txt

COMMIT_COUNTER=1
DAYS_REVERSE_COUNTER=9

until [  $DAYS_REVERSE_COUNTER -lt 1 ]; do

    RANDOM_SAME_DAY_COMMITS_COUNTER=$(( ( RANDOM % 3 )  + 1 ))
    
    until [  $RANDOM_SAME_DAY_COMMITS_COUNTER -lt 1 ]; do
    

        git add SaveTheWorld.txt
        git commit -m "Commit $COMMIT_COUNTER $RANDOM_SAME_DAY_COMMITS_COUNTER "

        TEMP_DATE=$(date --date="- $DAYS_REVERSE_COUNTER day")
        echo SaveTheWorld >> SaveTheWorld.txt
        echo $TEMP_DATE
        GIT_COMMITTER_DATE="$TEMP_DATE" git commit --amend --no-edit --date "$TEMP_DATE"
    
        let RANDOM_SAME_DAY_COMMITS_COUNTER-=1
    done 

    let COMMIT_COUNTER=COMMIT_COUNTER+1
    let DAYS_REVERSE_COUNTER-=1
done