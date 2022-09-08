defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_number/1)
  end
  defp handle_file_read({:error, reason}), do: "Error reading to file: #{reason}"
  @spec convert_and_evaluate_number(binary) :: any
  defp convert_and_evaluate_number(elem) do
    elem
    |> String.to_integer()
    |> evaluate_number()
  end
  @spec evaluate_number(any) :: any
  defp evaluate_number(number) when rem(number, 3) === 0 and rem(number, 5) == 0, do: "fizzbuzz"
  defp evaluate_number(number) when rem(number, 3) == 0, do: "fizz"
  defp evaluate_number(number) when rem(number, 5) == 0, do: "buzz"
  defp evaluate_number(number), do: number



end
