defmodule Chop do
  def guess(answer, low..high = range) do
    answer_guess = div(low + high, 2)
    IO.inspect(answer_guess)
    _check(answer, answer_guess, range)
  end

  defp _check(answer, answer_guess, _) when answer == answer_guess do
    "find #{answer_guess}"
  end

  defp _check(answer, answer_guess, _low..high) when answer > answer_guess do
    guess(answer, (answer_guess + 1)..high)
  end

  defp _check(answer, answer_guess, low.._high) when answer < answer_guess do
    guess(answer, low..(answer_guess - 1))
  end
end

Chop.guess(5, 1..1000)
|> IO.inspect()
