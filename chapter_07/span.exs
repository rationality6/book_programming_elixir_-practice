defmodule MyList do
  def span(from, to) when from >= to do
    []
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end

  def span_to_list(from, to) do
    Enum.to_list(from..to)
  end
end

MyList.span(1, 10) |> IO.inspect()
MyList.span(3, 5) |> IO.inspect()
MyList.span(9, 15) |> IO.inspect()
