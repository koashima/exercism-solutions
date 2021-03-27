defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map

  def count(sentence) do
    sentence
      |> format()
      |> Enum.frequencies()
  end

  def format(sentence) do
    sentence
      |> String.downcase()
      |> String.replace( "_", " ")
      |> String.replace(~r/[!$%^&*()@+|~=`{}\[\]:";'<>?,.\/]/, "")
      |> String.split(" ", trim: true)
  end
end
