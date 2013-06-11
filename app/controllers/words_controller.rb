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
      flash[:notice] = "Sorry, please enter a single word made up of only letters"
      redirect_to '/words'
    end
  end
end
