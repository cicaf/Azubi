
              

#!/usr/bin/env bash
main() {
	local -a prime_numbers=()
local num="$1"

        

          

    for (( i=2; i*i<=num; i++ )); do

        

          

        (( num % i != 0 )) && continue

        

          

        while (( num % i == 0 )); do

        

          

            prime_numbers+=("$i")

        

          

            (( num /= i ))

        

          

        done

        

          

    done

        

          


        

          

    (( num != 1 )) && prime_numbers+=("$num")

        

          


        

          

    IFS=" " printf "%s\n" "${prime_numbers[*]}"

        

          

}

        

          


        

          

main "$@"

        

          


        
