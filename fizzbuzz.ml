(*  An Ocaml  program that prints the numbers from 0 to 100, one per line. 
* For multiples of three it will print "Fizz" instead of the number.
* For multiples of five print "Buzz". 
* For numbers which are multiples of both three and five print "FizzBuzz".
*)


(* print a single fizzbuzz line *)
let printer (n:int) : unit =
  if n mod 15 = 0 then
    print_endline "FizzBuzz"
  else if n mod 3 = 0 then
    print_endline "Fizz"
  else if n mod 5 = 0 then
    print_endline "Buzz"
  else
    Printf.printf "%d\n" n

(* for each n from n up to and including 100, print it *)
(* precondition:  n >= 0 and n <= 100 *)
let rec fizzbuzz (n:int) : unit =
  assert (n >= 0 && n <= 100);
  printer n;
  if n < 100 then fizzbuzz (n+1)

let main : unit = fizzbuzz 0 
