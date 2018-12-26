class StaticPagesController < ApplicationController
  def home
    @lists = List.all
    @cards = Card.all
  end
end
