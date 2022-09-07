
source = %{
  gold: 3,
  woods: 7,
  oil: 9
}

source = %{source| gold: source.gold + 9}
source = %{source| gold: source.gold + 9}
source = %{source| gold: source.gold + 9}
source = %{source| gold: source.gold + 9}

source |> IO.inspect()

defmodule Resources do
  use GenServer

  @source  %{
    gold: 3,
    woods: 7,
    oil: 9
  }

  def get_gold do
    Map.update!(source, :gold, &(&1 + 9))
  end
end

source = %{
  gold: 3,
  woods: 7,
  oil: 9
}

source = Map.update!(source, :gold, &(&1 + 9))
source = Map.update!(source, :gold, &(&1 + 9))

source |> IO.inspect()



defmodule Resources do
  @source  %{
    gold: 3,
    woods: 7,
    oil: 9
  }

  def get_gold do
    Map.update!(source, :gold, &(&1 + 9))
  end
end

Resources.get_gold()
