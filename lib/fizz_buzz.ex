defmodule FizzBuzz do
  def build(file_name) do
    {:ok, file} = File.read(file_name)
    file
  end
end
