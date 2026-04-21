defmodule Hangman do

  def score_guess({word, word_g, incorrectt, attempt}, char) do
    cond do
      attempt==0 ->
        {word, word_g, incorrectt, 0}
      String.contains?(word_g,char) ->
        {word, word_g, incorrectt, attempt}
      String.contains?(word, char) ->
        {word, word_g<>char, incorrectt, attempt}
        String.contains?(incorrectt,char) ->
        {word, word_g, incorrectt, attempt}
      true ->
        {word, word_g, incorrectt<>char, attempt-1}
    end

  end
end
