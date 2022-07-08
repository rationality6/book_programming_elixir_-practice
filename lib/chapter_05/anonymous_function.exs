sum = fn a, b -> a + b end

sum.(1, 2)
|> IO.inspect()

sum.(3, 5)
|> IO.inspect()

defmodule Adder do
  def perform(a, b) do
    sum = fn a, b -> a + b end
    sum.(a, b)
  end
end

Adder.perform(7, 15)
|> IO.inspect()

greet = fn -> IO.puts "Hello" end
greet.()


f2 = fn -> 99 end
f2.() |> IO.inspect
