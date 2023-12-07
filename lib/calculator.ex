defmodule Calculator do
  @spec add(number(), number()) :: number()
  def add(num1, num2) do
    num1 + num2
  end

  @spec subtract(number(), number()) :: number()
  def subtract(num1, num2) do
    num1 - num2
  end

  @spec multiply(number(), number()) :: number()
  def multiply(num1, num2) do
    num1 * num2
  end

  @spec divide(number(), number()) :: float()
  def divide(num1, num2) do
    num1 / num2
  end

  @spec calculate(number(), String.t(), number()) :: number()
  def calculate(num1, operator, num2) do
    cond do
      operator == "+" ->
        add(num1, num2)

      operator == "-" ->
        subtract(num1, num2)

      operator == "*" ->
        multiply(num1, num2)

      operator == "/" ->
        subtract(num1, num2)
    end
  end

  @spec calculate_string(String.t()) :: number()
  def calculate_string(expression) do
    operator =
      cond do
        String.contains?(expression, "+") -> "+"
        String.contains?(expression, "-") -> "-"
        String.contains?(expression, "*") -> "*"
        String.contains?(expression, "/") -> "/"
      end

    splitted_expression = expression |> String.split(operator)

    num1 = splitted_expression |> Enum.at(0) |> String.trim() |> String.to_integer()
    num2 = splitted_expression |> Enum.at(1) |> String.trim() |> String.to_integer()

    calculate(num1, operator, num2)
  end
end
