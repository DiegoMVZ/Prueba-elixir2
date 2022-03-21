defmodule NqccHexacode do
  @moduledoc """
  Documentation for `NqccHexacode`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> NqccHexacode.compile_file("./examples/return_2.c")
      
      ["int", "main(){return", "2;}"]

  """
  def compile_file(file_path) do
    IO.puts("Compiling file: " <> file_path)
    # assembly_path = String.replace_trailing(file_path, ".c", ".s")

    File.read!(file_path)
    |> Sanitizer.sanitize_source()
    |> IO.inspect(label: "\nSanitizer ouput")
  end
end
