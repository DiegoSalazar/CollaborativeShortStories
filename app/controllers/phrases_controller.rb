class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.all
  end

  def new
    @phrase = Phrase.new
  end
end
