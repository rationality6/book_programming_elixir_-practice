defmodule Chapter_11.Parse do
  def number([?- | tail]), do: _number_digits(tail, 0) * -1
  def number([?+ | tail]), do: _number_digits(tail, 0)
  def number(str), do: _number_digits(str, 0)

  defp _number_digits([], value), do: value

  defp _number_digits([digit | tail], value) when digit in '0123456789' do
    _number_digits(tail, value * 10 + digit - ?0)
  end

  defp _number_digits([non_digit | tail], value) do
    raise "숫자가 아니에요 #{[non_digit]}"
  end
end

Chapter_11.Parse.number('123') |> IO.inspect()
Chapter_11.Parse.number('-123') |> IO.inspect()
Chapter_11.Parse.number('+123') |> IO.inspect()
Chapter_11.Parse.number('+9') |> IO.inspect()
Chapter_11.Parse.number('+a') |> IO.inspect()
