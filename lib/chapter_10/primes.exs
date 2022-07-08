defmodule Prime do
  def span(from, to) when from > to do
    []
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end

  def is_prime?(2), do: true

  def is_prime?(num) do
    last =
      num
      |> :math.sqrt()
      |> Float.ceil()
      |> trunc

    not_prime = 2..last |> Enum.any?(fn a -> rem(num, a) == 0 end)
    !not_prime
  end

  def is_prime2(2), do: false

  def is_prime2(num) do
    last =
      num
      |> :math.sqrt()
      |> Float.ceil()
      |> trunc

    2..last |> Enum.any?(fn a -> rem(num, a) == 0 end)
  end

  def up_to(n) do
    range = span(2, n)
    for n <- range, Prime.is_prime?(n), do: n
  end

  def up_to_version2(n) do
    range = 2..n |> Enum.to_list()
    for n <- range, Prime.is_prime?(n), do: n
  end

  def up_to_version3(n) do
    range = 2..n |> Enum.to_list()
    range_filterd = for n <- range, Prime.is_prime2(n), do: n
    range -- range_filterd
  end
end

Prime.up_to(40) |> IO.inspect()
Prime.up_to_version2(40) |> IO.inspect()
Prime.up_to_version3(40) |> IO.inspect()
