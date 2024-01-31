let convert number1 unit1 unit2 = 
  if unit1 = "kg" && unit2 = "g" 
    then string_of_float(number1)^" "^unit1^" = "^ string_of_float(number1 *. 1000.)^" "^unit2 
    else 
      if unit1 = "lbs" && unit2 = "stones" 
        then string_of_float(number1)^" "^unit1^" = "^ string_of_float(number1 /. 14.)^" "^unit2 
        else 
          if unit1 = "in" && unit2 = "cm" 
            then string_of_float(number1)^" "^unit1^" = "^ string_of_float(number1 *. 2.54)^" "^unit2
              else 
                if unit1 = "c" && unit2 = "f" 
                  then string_of_float(number1)^" "^unit1^" = "^ string_of_float(number1 *. 1.8 +. 32.)^" "^unit2
                    else "Incorrect Values";;
let () = assert (convert 100. "kg" "g" = "100. kg = 100000. g")
let () = assert (convert 140. "lbs" "stones" = "140. lbs = 10. stones")
let () = assert (convert 12. "in" "cm" = "12. in = 30.48 cm")
let () = assert (convert 12. "c" "f" = "12. c = 53.6 f")
