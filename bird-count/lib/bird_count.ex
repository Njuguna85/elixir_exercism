defmodule BirdCount do
  def today([]), do: nil
  def today([hd | tl]), do: hd

  def increment_day_count([]), do: [1]
  def increment_day_count([value]), do: [value + 1]
  def increment_day_count([hd | tl]), do: [hd + 1 | tl]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total([hd | tl]), do: hd + total(tl)

  def busy_days(list) do
    case list do
      [] ->
        0

      [h | t] ->
        if h >= 5 do
          1 + busy_days(t)
        else
          busy_days(t)
        end
    end
  end
end
