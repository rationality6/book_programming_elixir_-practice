defmodule FizzBuzz do
  defp _fizz_buzz_check(cases) do
    case cases do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, c} -> c
    end
  end

  defp _fizz_buzz(n) do
    _fizz_buzz_check({rem(n, 3), rem(n, 5), n})
  end

  def run(start, til) do
    Enum.map(start..til, &_fizz_buzz(&1))
  end
end

# FizzBuzz.run(1, 20)
# |> IO.inspect()
