class WordsController < ApplicationController
  def index
    @new_word = Word.new
    @previous_words = Word.all
    @last_word = Word.all.last
  end

  def create
    @new_word = Word.new(params[:word])
    if @new_word.save
      redirect_to "/words"
    else
      raise boom
    end
  end
end
