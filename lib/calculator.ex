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
end
