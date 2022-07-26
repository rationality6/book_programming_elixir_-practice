defmodule Test do
  def perform(list) do
    do_select(list)
  end

  def do_select([a | [b | [c | d]]]) do
    IO.inspect(a)
    IO.inspect(b)
    IO.inspect(c)
    IO.inspect(d)
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0 |> Test.perform()
