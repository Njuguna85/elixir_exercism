defmodule KitchenCalculator do
  @conversion_chart %{milliliter: 1, cup: 240, fluid_ounce: 30, teaspoon: 5, tablespoon: 15}

  def get_volume({_vol, num}), do: num

  def to_milliliter({vol, units}), do: {:milliliter, @conversion_chart[vol] * units}

  def from_milliliter({:milliliter, units}, unit) do
    {unit, units / @conversion_chart[unit]}
  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter
    |> from_milliliter(unit)
  end
end
