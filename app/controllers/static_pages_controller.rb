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

  def edit
    @card = Card.find(params[:id])
  end

  def update
      @card = Card.find(params[:id])
      if @card.update_attributes(card_params)
        redirect_to root_path
      else
        render 'edit'
      end
  end

  def destroy
    Card.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:title, :detail, :comment)
  end
end
