defmodule Stats do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def
end

# Stats.sum([1, 3, 5, 7, 9, 11]) |> IO.inspect()

ExUnit.start()

defmodule TestStats1 do
  use ExUnit.Case

  describe "정수 리스트" do
    setup do
      [list: [1, 3, 5, 7, 9, 11], sum: 36, count: 6]
    end

    test "합 계산", fixture do
      assert Stats.sum(fixture.list) == fixture.sum
    end
  end
end
