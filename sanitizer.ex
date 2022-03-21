defmodule Sanitizer do
  def sanitize_source(file_content) do
    # Quita todos los espacios de inicio y final
    trimmed_content = String.trim(file_content)
    # Quita todos los espacios y regresa una lista de tokens
    Regex.split(~r/\s+/, trimmed_content)
  end
end
