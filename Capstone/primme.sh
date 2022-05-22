 
              

#!/usr/bin/env bash

        

          


        

          

[[ $1 ]] || exit

        

          


        

          

f=2

        

          

prime=1

        

          

number="$1"

        

          


        

          

until [[ number -eq 1 ]]; do

        

          

    if ((prime)) && ((number % f == 0)); then

        

          

        output+="$f "

        

          

        ((number/=f))

        

          

    else

        

          

        ((f++))

        

          

        ((f == 2 || f == 3)) && { prime=1; continue; }

        

          

        ((f <= 1 || f % 2 == 0 || f % 3 == 0)) && { prime=0; continue; }

        

          

        not_prime=0

        

          

        for ((i = 5; i**2 <= f; i += ( f > 210 ? 210 : 6) )) {

        

          

            ((f % i == 0 || f % (i + 2) == 0)) && { not_prime=1; break; }

        

          

        }

        

          

        ((not_prime)) && prime=0 || prime=1

        

          

    fi

        

          

done

        

          


        

          

echo "${output::-1}"

        

          


        

          


        

          
