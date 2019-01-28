class StaticPagesController < ApplicationController
  def home
    @lists = List.all
    @cards = Card.all
  end

  def new
  end

  def create
    @card = Card.new
    @card.title = params[:card][:title]
    @card.detail = params[:card][:detail]
    @card.comment = params[:card][:comment]
    @card.save
    redirect_to root_path
  end
end
