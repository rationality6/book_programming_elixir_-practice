rem(5, 3) |> IO.inspect()

fizz_buzz_check = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizz_buzz_function = fn n -> fizz_buzz_check.(rem(n, 3), rem(n, 5), n) end

Enum.map(1..20, fizz_buzz_function)
|> IO.inspect()
