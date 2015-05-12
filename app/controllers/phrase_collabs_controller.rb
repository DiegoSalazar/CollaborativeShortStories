class PhraseCollabsController < ApplicationController
  before_action :set_phrase, only: [:show, :edit, :update, :destroy]

  def new
    @phrase_collab = Phrase.new
  end

  private

  def set_phrase
    @phrase = Phrase.find params[:phrase_id]
  end
end