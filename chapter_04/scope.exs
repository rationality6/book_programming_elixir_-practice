line_no = 50

if(line_no == 50) do
  IO.inspect("new-page")
  line_no = 0
  IO.inspect(line_no)
end

IO.inspect(line_no)

Enum.count([1, 2, 3, 4]) |> IO.inspect()

defmodule Average do
  def of(value) do
    with count = Enum.count(value),
         sum = Enum.sum(value) do
      sum / count
    end
  end
end

value = [1, 2, 3, 4]

Average.of(value)
|> IO.inspect()
