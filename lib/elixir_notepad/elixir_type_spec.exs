defmodule StringHelpers do
  @type word() :: String.t()

  @spec long_word?(word()) :: boolean()
  def long_word?(word) when is_binary(word) do
    String.length(word)
  end
end

StringHelpers.long_word?("hello world foobar") |> IO.inspect()

defmodule Helpers do
  @type word() :: String.t()

  @spec long_word?(word()) :: boolean()
  def long_word?(word) when is_binary(word) do
    String.length(word) > 8
  end

  @type year :: Integer
  def interger?(year) do
    year
  end
end

Helpers.long_word?("hello world???") |> IO.inspect()

Helpers.interger?(1983) |> IO.inspect()

defmodule LousyCalculator do
  @spec add(number, number) :: {number, String.t()}
  def add(x, y), do: {x + y, "You need a calculator to do that?!"}

  @spec multiply(number, number) :: {number, String.t()}
  def multiply(x, y), do: {x * y, "Jeez, come on!"}
end

LousyCalculator.add(5, 8) |> IO.inspect()
