defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
  """
  @spec leap_year?(non_neg_integer) :: boolean
  # def leap_year?(year) when is_integer(year) do
  #  condition do
  #     rem(year, 4) && rem(year, 400) && rem(year, 100) == 0 ->
  #       true

  #     rem(year, 4) && rem(year, 100) != 0 ->
  #       false

  #     rem(year, 4) == 0 ->
  #       true
  #   end
  # end
  def leap_year?(year) when rem(year, 4) == 0 and (rem(year, 100) != 0 or rem(year, 400) == 0),
    do: true

  def leap_year?(_year), do: false
end
