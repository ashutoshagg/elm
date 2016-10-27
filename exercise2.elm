import Html
import String

(~+) a b =
    a + b + 0.1

add a b =
    a + b    

result =
     (~+) 3 1

firstLetterSame string1 string2 =
    String.left 1 string1 == String.left 1 string2    

(~=) string1 string2 =
    String.left 1 string1 == String.left 1 string2  

result1 =
    (~=) "ashu" "ash"      

result2 =
    "ashu" ~= "anshul"

wordcount =
    String.words >> List.length 

main =
   "how are you"
   |> wordcount
   |> toString
   |> Html.text        