defmodule Algo.SelectionSortTest do
  use ExUnit.Case

  import Algo.SelectionSort, only: [sort: 1, smaller: 2]

  test "셀렉션 소트 최종 sort 비교 1" do
    array0 = [100, 4, 10, 6, 9, 3]
    result = array0 |> sort()
    expact_result = [3, 4, 6, 9, 10, 100]
    assert result == expact_result
  end

  test "셀렉션 소트 최종 sort 비교 2" do
    array0 = [3, 5, 9, 1, 4, 8, 6]
    result = array0 |> sort()
    expact_result = [1, 3, 4, 5, 6, 8, 9]
    assert result == expact_result
  end

  test "셀렉션 소트 최종 sort 비교 3" do
    array0 = [0, 4832, 238_423_482_348_239_423, 2_398_423_489_230_230]
    result = array0 |> sort()
    expact_result = [0, 4832, 2_398_423_489_230_230, 238_423_482_348_239_423]
    assert result == expact_result
  end

  test "셀렉션 소트 최종 sort 비교 shuffle" do
    array0 =
      1..10
      |> Enum.to_list()
      |> Enum.shuffle()

    result = array0 |> sort()
    expact_result = array0 |> Enum.sort()
    assert result == expact_result
  end

  test "smaller" do
    assert smaller(1, 2) == 1
    assert smaller(2, 1) == 1
    assert smaller(2, 3) == 2
    assert smaller(3, 3) == 3
  end
end
