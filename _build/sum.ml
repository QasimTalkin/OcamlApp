open core.std 

let rec  read_and_accumulate accum = 
  let line = In_channel.input_line In_channel.stdin in 
  match line with 
    | None -> accm
    | Some -> read_and_accumulate (accum +. Float.of_string x)

  let () = printf "Total:  %F\n" (read_and_accumulate 0.)