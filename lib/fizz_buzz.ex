defmodule FizzBuzz do
  def build(file_name) do
    handle_file_read(File.read(file_name))
  end

  def handle_file_read({:ok, result}), do: result
  def handle_file_read({:error, reason}), do: reason
end
