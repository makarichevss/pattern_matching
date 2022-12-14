# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Binaries do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def identify_command("SAY " <> greet), do: {:say, greet}
  def identify_command("WAVE " <> name), do: {:wave, name}
  def identify_command(_other), do: {:error, "Unrecognized command"}

  def format_phone(<<city::binary-size(3), first::binary-size(3), second::binary-size(4)>>) do
    "(#{city}) #{first}-#{second}"
  end

  def format_phone(<<first::binary-size(3), second::binary-size(4)>>) do
    "#{first}-#{second}"
  end

  def format_phone(other), do: other

  @png_signature <<137::size(8), 80::size(8), 78::size(8), 71::size(8), 13::size(8), 10::size(8),
                   26::size(8), 10::size(8)>>

  @jpg_signature <<255::size(8), 216::size(8)>>

  def image_type(<<@png_signature, _tail::binary>>), do: :png
  def image_type(<<@jpg_signature, _tail::binary>>), do: :jpg
  def image_type(_other), do: :unknown
end
