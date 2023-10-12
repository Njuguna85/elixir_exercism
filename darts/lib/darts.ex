defmodule Darts do
  def score({x, y}) do
    radius =
      (x * x + y * y)
      |> :math.sqrt()

    cond do
      radius > 10 ->
        0

      radius > 5 ->
        1

      radius > 1 ->
        5

      true ->
        10
    end
  end
end
