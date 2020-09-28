defmodule Anagram do
  def compare(string_a, string_b) do
    parser(string_a) == parser(string_b)
  end

  defp parser(string) do
    string
      |> String.replace(~r/[^\w]/,"")
      |> String.downcase()
      |> String.graphemes()
      |> Enum.sort()
      |> Enum.join()
  end
end
