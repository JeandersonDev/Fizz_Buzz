defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is inserted, returns a converted list" do
      expected_response = {:ok,[1, 2, :Fizz, 4, :Buzz, :Fizz, 7, 8, :Fizz, :Buzz, :fizzBuzz, :Buzz, :fizzBuzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end
    test "when an invalid file is inserted, returns a converted list" do
      expected_response = {:ok,[1, 2, :Fizz, 4, :Buzz, :Fizz, 7, 8, :Fizz, :Buzz, :fizzBuzz, :Buzz, :fizzBuzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end
  end
end
