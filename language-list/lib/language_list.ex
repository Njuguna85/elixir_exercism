defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove([hd | tl]), do: tl

  def first([hd | _]), do: hd

  def count(list), do: length(list)

  def functional_list?(list) do
    "Elixir" in list
  end
end
