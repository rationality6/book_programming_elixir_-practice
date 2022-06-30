defmodule MyList do
  def recursion_length([]) do
    0
  end

  def recursion_length([_h | t]) do
    1 + recursion_length(t)
  end



end

[1, 2, 3, 4, '3', '33']
|> MyList.recursion_length()
|> IO.inspect()
