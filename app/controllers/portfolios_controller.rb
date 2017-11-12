class PortfoliosController < ApplicationController

  def index
    # list out all the items
    @portfolio_items = Portfolio.all
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live' } # redirect to full list of items
      else
        format.html { render :new }
      end
    end
  end

  def edit
    # new - create something from scratch
    # edit - needs to fetch the actual record
    @portfolio_item = Portfolio.find(params[:id]) 
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Your portfolio was updated' }
      else
        format.html { render :edit }
      end
    end
  end


  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end

end
