defmodule Chop do
  def guess(n, range) do
    head..tail = range
    check(n, tail)
  end

  def check(n, l) when 0 >= l and n == l do
    l
  end

  def check(n, l) when n > l do
    "커 #{n}"
    check(n, l / 2)
  end

  # def check(n, l) when n < l do
  #   "작아 #{n}"
  #   check(n, l / 2)
  # end
end

Chop.guess(273, 1..1000)
|> IO.inspect()
