{a, b} = {2, 3}

swap = fn {a, b} -> {b, a} end

result =
  swap.({3, 5})
  |> IO.inspect()

swap.(result)
|> IO.inspect()

list_concat = fn a, b -> a ++ b end

list_concat.([:a, :b], [:c, :d])
|> IO.inspect()

sum = fn a, b, c -> a + b + c end

sum.(1, 2, 3)
|> IO.inspect()

pair_tuple_to_list = fn {a, b} -> [a, b] end

pair_tuple_to_list.({1234, 5678})
|> IO.inspect()

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

# exist file
handle_open.(File.open("mix.exs")) |> IO.inspect()
# nonexist file
handle_open.(File.open("no")) |> IO.inspect()
