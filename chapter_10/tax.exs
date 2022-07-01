defmodule TaxMachine do
  @tax_rate [NC: 0.075, TX: 0.08]
  @orders [
    [id: 123, ship_to: :NC, net_amount: 100.00],
    [id: 124, ship_to: :OK, net_amount: 35.50],
    [id: 125, ship_to: :TX, net_amount: 24.00]
  ]

  def add_total_amount() do
    @orders
    |> Enum.map(&add_total_to(&1, @tax_rate))
  end

  def add_total_to(order = [id: _id, ship_to: state, net_amount: net], tax_rate) do
    tax_rate = Keyword.get(tax_rate, state, 0)
    tax = tax_rate * net
    total = tax + net
    Keyword.put(order, :total_amout, total)
  end
end

TaxMachine.add_total_amount()
|> IO.inspect()
