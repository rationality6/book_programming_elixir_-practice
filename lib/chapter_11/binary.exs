
b = <<1, 2, 3>>
IO.inspect(b)

Kernel.byte_size(b) |> IO.inspect()

Kernel.bit_size(b) |> IO.inspect()

c = <<1::size(2), 1::size(3)>>
IO.inspect(c)
byte_size(c) |> IO.inspect()
bit_size(c) |> IO.inspect()
