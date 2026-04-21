defmodule Hangman do

  def score_guess({word, word_g, incorrectt, attempt}, char) do
    if String.contains?(word, char) do
      {word, word_g<>char, incorrectt, attempt}
    else
      {word, word_g, incorrectt<>char, attempt-1}
    end
  end

end
