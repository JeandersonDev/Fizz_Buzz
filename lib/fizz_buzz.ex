defmodule FizzBuzz do
  ## First a file is passed to this function
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()

    ## Function without PipeOperator

    # case File.read(file_name)do
    #   {:ok, result} -> result
    #   {:error, reason} -> reason
    # end
  end

  # This function will read the file if it match in pattern matching and will convert the file
  defp handle_file_read({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_numbers/1)

    {:ok, result}
  end

  # If the pattern matching invalid, the function show an error and reason
  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  # The function will convert the elem to integer and call the function for change the numbers
  defp convert_numbers(elem) do
    elem
    |> String.to_integer()
    |> change_numbers()
  end

  # These functions will check the numbers unsing the *Guards and change to Fizz, Buzz, FizzBuzz
  defp change_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzBuzz
  defp change_numbers(number) when rem(number, 3) == 0, do: :Fizz
  defp change_numbers(number) when rem(number, 5) == 0, do: :Buzz
  defp change_numbers(number), do: number
end
