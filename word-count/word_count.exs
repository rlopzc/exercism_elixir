defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> sanitize()
    |> String.split()
    |> count_words()
  end

  defp sanitize(str) do
    str
    |> String.downcase()
    |> String.replace(~r/[,.!&^@%$:]/, "")
    |> String.replace(~r/_/, " ")
  end

  defp count_words(list) do
    Enum.reduce(list, %{},
      fn word, acc ->
        Map.update(acc, word, 1, &(&1 + 1))
      end)
  end
end
