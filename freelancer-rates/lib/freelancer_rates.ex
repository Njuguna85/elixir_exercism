defmodule FreelancerRates do
  @day_rate 8.0
  @month_billable_days 22

  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * @day_rate
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    with_discount = before_discount * discount / 100
    before_discount - with_discount
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    (daily_rate(hourly_rate) * @month_billable_days)
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_income = daily_rate(hourly_rate)

    discounted_daily_income = apply_discount(daily_income, discount)

    (budget / discounted_daily_income)
    |> Float.floor(1)
  end
end
