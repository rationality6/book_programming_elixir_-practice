"99" |> IO.inspect()
"99" |> String.to_integer() |> IO.inspect()
IEx.Helpers.i("99" |> IO.inspect())

tuple0 = {1, 2, 3, 4}

Kernel.elem(tuple0, 0) |> IO.inspect()
Kernel.elem(tuple0, 1) |> IO.inspect()
