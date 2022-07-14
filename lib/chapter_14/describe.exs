defmodule Stats do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def len(list), do: _len_tail(list, 0)
  defp _len_tail([], count), do: count

  defp _len_tail([_head | tail], count) do
    _len_tail(tail, count + 1)
  end

  def average(list) do
    sum(list) / len(list)
  end
end

defmodule Stats1 do
  def sum(vals), do: vals |> Enum.reduce(0, &+/2)
  def len(vals), do: vals |> Kernel.length()
  def average(list), do: sum(list) / len(list)
end

ExUnit.start()

defmodule TestStats do
  use ExUnit.Case

  describe "정수 리스트" do
    setup do
      [list: [1, 3, 5, 7, 9, 11], sum: 36, count: 6]
    end

    test "합 계산", fixture do
      assert Stats.sum(fixture.list) == fixture.sum
    end

    test "길이 계산", fixture do
      assert Stats.len(fixture.list) == fixture.count
    end

    test "값의 평균 계산", fixture do
      assert Stats.average(fixture.list) == fixture.sum / fixture.count
    end
  end
end

defmodule TestStats1 do
  use ExUnit.Case

  describe "정수 리스트" do
    setup do
      [list: [1, 3, 5, 7, 9, 11], sum: 36, count: 6]
    end

    test "합 계산", fixture do
      assert Stats1.sum(fixture.list) == fixture.sum
    end

    test "길이 계산", fixture do
      assert Stats1.len(fixture.list) == fixture.count
    end

    test "값의 평균 계산", fixture do
      assert Stats1.average(fixture.list) == fixture.sum / fixture.count
    end
  end
end
