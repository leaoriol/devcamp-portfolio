class PortfoliosController < ApplicationController

  def index
    # list out all the items
    @portfolio_items = Portfolio.all
  end
end
