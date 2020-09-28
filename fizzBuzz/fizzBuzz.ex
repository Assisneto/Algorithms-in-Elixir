defmodule FizzBuzz do
  def exe(number) do
    Enum.each(1..number, fn x ->
      case {rem(x,3) == 0, rem(x,5) == 0} do
        { true, true } -> IO.puts "FizzBuzz"
        { false, true } -> IO.puts "Buzz"
        { true, false } -> IO.puts "Fizz"
        { false, false} -> IO.puts x
      end
    end)
  end
end
