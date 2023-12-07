defmodule ElixirCalculator do
  @spec main() :: :ok
  def main do
    num1 = IO.gets("Number 1: ") |> String.trim() |> String.to_integer()

    operator = IO.gets("Operator: ") |> String.trim()

    num2 = IO.gets("Number 2: ") |> String.trim() |> String.to_integer()

    result = Calculator.calculate(num1, operator, num2)

    IO.puts(result)
  end
end
