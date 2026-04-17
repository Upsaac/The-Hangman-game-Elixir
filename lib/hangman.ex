defmodule Hangman do
  def score_guess({word, "", nose, attempt}, char) do
    if String.contains?(word, char) do
      {word, char, nose, attempt}
    end
  end
end
