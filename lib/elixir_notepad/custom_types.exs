defmodule Person do
  @typedoc """
  A 4 digit year, e.g. 1984
  무조껀 숫자
  """
  @type year :: integer

  @spec current_age(year) :: integer
  def current_age(year_of_birth), do: year_of_birth
end

Person.current_age('wafweaf') |> IO.inspect()

defmodule LousyCalculator do
  @spec add(number, number) :: {number, String.t()}
  def add(x, y), do: {x + y, "You need a calculator to do that?!"}

  @spec multiply(number, number) :: {number, String.t()}
  def multiply(x, y), do: {x * y, "Jeez, come on!"}
end

LousyCalculator.add(3, 2) |> IO.inspect()


defmodule StringHelpers do
  @type word() :: String.t()

  @spec long_word?(word()) :: boolean()
  def long_word?(word) when is_binary(word) do
    String.length(word) > 8
  end
end

StringHelpers.long_word?("hello") |> IO.inspect()
StringHelpers.long_word?("hello world") |> IO.inspect()
StringHelpers.long_word?(3) |> IO.inspect()
