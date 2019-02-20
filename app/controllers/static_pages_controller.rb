class StaticPagesController < ApplicationController
  def home
    @lists = List.all
    @cards = Card.all
  end

  def new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  
  def card_params
    params.require(:card).permit(:title, :detail, :comment)
  end
end
