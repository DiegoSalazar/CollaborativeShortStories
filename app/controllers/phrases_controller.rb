class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.all
  end

  def new
  	@phrase = Phrase.new
  end

  def create
  	@phrase = Phrase.create text: params[:phrase][:text]
  	@phrase.user_id = current_user.id
  	@phrase.save
  	redirect_to root_path, notice: 'Phrase was successfully created.'
  end

  def destroy
  	Phrase.find_by_id(params[:id]).destroy
  	redirect_to root_path, notice: 'Phrase was successfully deleted.'
  end
end
