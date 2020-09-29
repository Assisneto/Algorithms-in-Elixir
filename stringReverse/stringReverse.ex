defmodule StringReverse do
  def exe(string) do
    String.split(string,"")
    |> Enum.reduce(&(&1<>&2))
  end
end
