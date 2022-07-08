defmodule Weather do
  def test_data() do
    [
      [1_366_225_622, 26, 15, 0.125],
      [1_366_225_622, 27, 15, 0.45],
      [1_366_225_222, 28, 21, 0.25],
      [1_366_229_222, 26, 19, 0.081],
      [1_366_229_222, 27, 17, 0.468],
      [1_366_229_622, 28, 15, 0.60],
      [1_366_232_822, 26, 22, 0.095],
      [1_366_232_822, 27, 21, 0.05],
      [1_366_232_822, 28, 24, 0.03],
      [1_366_225_622, 26, 17, 0.025]
    ]
  end

  def for_location_27([]) do
    []
  end

  def for_location_27([[time, 27, temp, rain] | tail]) do
    [[time, 27, temp, rain] | for_location_27(tail)]
  end

  def for_location_27([_ | tail]) do
    for_location_27(tail)
  end
end

Weather.test_data() |> IO.inspect()

Weather.test_data()
|> Weather.for_location_27()
|> IO.inspect()
