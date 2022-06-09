defmodule Matching do
  @sorteds [
    %{"id" => 1, name: 'foo'},
    %{"id" => 2, name: 'bar'},
    %{"id" => 3, name: 'baz'},
    %{"id" => 4, name: 'baza'}
  ]

  def test([help: true], values, _) when Kernel.length(values) > 0 do
    IO.inspect('here 1')
  end

  def test(_, [a, b, c], _) do
    IO.inspect('here 2')
  end

  def test(_, [a, b], _) do
    IO.inspect('here 3')
  end
end

Matching.test([help: true], ['a', 'b', 'c'], [])
Matching.test([], ['a', 'b', 'c'], [])
Matching.test([], ['a', 'b'], [])
