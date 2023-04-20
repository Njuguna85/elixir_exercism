defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.at(0)
  end

  def initial(name) do
    initial =
      name
      |> first_letter()
      |> String.upcase()

    "#{initial}."
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(fn x -> initial(x) end)
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    initials1 =
      full_name1
      |> initials()

    initials2 =
      full_name2
      |> initials()


    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials1}  +  #{initials2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
