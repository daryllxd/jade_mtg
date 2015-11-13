class SellablesController < ApplicationController
  def new
    @cards = Card.all
  end
end
