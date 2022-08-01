defmodule Ps.GetTheMiddle do
  def get_middle(str) do
    len = String.length(str)

    case rem(len, 2) do
      1 -> String.at(str, div(len, 2))
      _ -> String.slice(str, div(len, 2) - 1, 2)
    end
  end
end
