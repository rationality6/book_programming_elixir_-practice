defmodule MyList do
  def max_with_if_else(list) do
    [max | rest] = list

    max_func = fn i, max ->
      if max < i do
        i
      else
        max
      end
    end

    Enum.reduce(rest, max, max_func)
  end

  def max_with_kernel_max([x]) do
    x
  end

  def max_with_kernel_max([head | tail]) do
    Kernel.max(head, max_with_kernel_max(tail))
  end

  def max_with_more_than(list) do
    max_func = fn
      head, old_val when head >= old_val -> head
      _, old_val -> old_val
    end

    max_with_more_than(list, 0, max_func)
  end

  def max_with_more_than([head | tail], val, func),
    do: max_with_more_than(tail, func.(head, val), func)

  def max_with_more_than([], val, _func), do: val
end

MyList.max_with_if_else([5, 8, 4, 6, 10, 5]) |> IO.inspect()
MyList.max_with_kernel_max([5, 8, 4, 6, 10, 5]) |> IO.inspect()
MyList.max_with_kernel_max([5]) |> IO.inspect()
MyList.max_with_more_than([5, 3, 6, 7, 9]) |> IO.inspect()
MyList.max_with_more_than(Enum.reverse([5, 3, 6, 7, 9]) |> IO.inspect()) |> IO.inspect()
