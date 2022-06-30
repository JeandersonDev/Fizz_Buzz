defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()

    # case File.read(file_name)do
    #   {:ok, result} -> result
    #   {:error, reason} -> reason
    # end
  end

  defp handle_file_read({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_numbers/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_numbers(elem) do
    elem
    |> String.to_integer()
    |> change_numbers()
  end

  defp change_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzBuzz
  defp change_numbers(number) when rem(number, 3) == 0, do: :Fizz
  defp change_numbers(number) when rem(number, 5) == 0, do: :Buzz
  defp change_numbers(number), do: number
end
