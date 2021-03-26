defmodule Bob do
  def hey(input) do
    cond do
      input == "" ->
        "Fine. Be that way!"

      input == String.upcase(input) && String.contains?(input, "?") ->
        "Calm down, I know what I'm doing!"

      String.contains?(input, "?") ->
        "Sure."

      input == String.upcase(input) ->
        "Whoa, chill out!"

      true ->
        "Whatever."
    end
  end
end
