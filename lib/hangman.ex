defmodule Hangman do

  def score_guess({word, word_g, nose, attempt}, char) do
    if String.contains?(word, char) do
      {word, word_g<>char, nose, attempt}
    end
  end

end
