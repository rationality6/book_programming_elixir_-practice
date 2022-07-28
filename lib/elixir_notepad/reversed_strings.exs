defmodule Solution do
  def reverse(string) do
    to_charlist(string)
    |> do_reverse([])
  end

  def do_reverse([], acc) do
    acc
  end

  def do_reverse([head | tail], acc) do
    do_reverse(tail, [head | acc])
  end
end

'world'
|> Solution.reverse()
|> IO.inspect()

"world"
|> Solution.reverse()
|> IO.inspect()

'word'
|> Solution.reverse()
|> IO.inspect()

defmodule Solution1 do
  @spec reverse(String.t()) :: String.t()
  def reverse(string) do
    String.reverse(string)
  end
end

"world"
|> Solution1.reverse()
|> IO.inspect()
