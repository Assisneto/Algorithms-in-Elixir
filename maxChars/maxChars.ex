defmodule MaxChars do
  def exe(string) do
    string
    |> String.graphemes()
    |> Enum.reduce(%{}, fn c, acc ->
      Map.put(acc, c, (acc[c] || 0) + 1)
    end)
    |> Enum.map(fn {k, v} -> {v, k} end)
    |> Enum.sort()
    |> Enum.reverse()
    |> returnValue()
  end

  defp returnValue( [{_,k} | _] ), do: k
end
