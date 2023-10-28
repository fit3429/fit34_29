#!/bin/bash
cd public_html
j=$(($RANDOM%100+1))
for x in {1..101}
do
        if [ $x -eq $j ]
        then
                echo "guessed right!<br/>">$x.html
                for i in {1..101}
                do
                        if [ $i -ne $x ]
                        then
                                echo "<a <href= http://c2072.myvds.org/~fit34_29/"$i".html>"$i"</a>">>$x.html
                        fi
                done
        fi

        if [ $x -gt $j ]
        then
                echo "Number is less!<br/>">$x.html
                for i in {1..101}
                do
                        if [ $i -ne $x ]
                        then
                                echo "<a href= http://c2072.myvds.org/~fit34_29/"$i"</a>">>$x.html
                        fi
                done
        fi
        if [ $x -lt $j ]
                then
                echo "Number is greater!<br/>">$x.html
                for i in {1..101}
                do
                        if [ $i -ne $x ]
                        then 
                                echo "<a href= http://c2072.myvds.org/~fit34_29/"$i"</a>">>$x.html
                        fi
                done
        fi

done
