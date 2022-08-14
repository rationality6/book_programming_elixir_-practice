defmodule Algo.InsertionSortTest do
  use ExUnit.Case

  import Algo.InsertionSort, only: [sort: 1]

  test "Insertion Sort 최종 sort 비교" do
    list0 =
      1..7
      |> Enum.to_list()
      |> Enum.shuffle()

    result = list0 |> sort()
    expact_result = list0 |>Enum.sort
    assert result == expact_result
  end
end
