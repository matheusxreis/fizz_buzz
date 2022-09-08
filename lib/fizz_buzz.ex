defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_number/1)
  end
  def handle_file_read({:error, reason}), do: "Error reading to file: #{reason}"
  def convert_and_evaluate_number(elem) do
    elem
    |> String.to_integer()
    |> evaluate_number()
  end
  def evaluate_number(number) do

  end
end
