defmodule ElixirCalculator do
  @spec main_seperate_inputs() :: :ok
  def main_seperate_inputs do
    num1 = IO.gets("Number 1: ") |> String.trim() |> String.to_integer()

    operator = IO.gets("Operator: ") |> String.trim()

    num2 = IO.gets("Number 2: ") |> String.trim() |> String.to_integer()

    result = Calculator.calculate(num1, operator, num2)

    IO.puts(result)
  end

  @spec main_one_input() :: :ok
  def main_one_input() do
    expression = IO.gets("Expression: ") |> String.trim()

    result = Calculator.calculate_string(expression)

    IO.puts(result)
  end
end
