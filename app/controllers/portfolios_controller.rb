class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
  access all: [:show, :index, :react], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    # list out all the items
    @portfolio_items = Portfolio.by_position
  end

  def sort
    puts params[:order]
    puts '*' * 50
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end

  def react
    @react_portfolio_items = Portfolio.react
  end

  def show
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
  end

  def update

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Your portfolio was updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    # redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Your portfolio was successfully deleted" }
    end
  end


  private
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        :main_image,
                                        :thumb_image,
                                        technologies_attributes: [:id, :name, :_destroy]
                                        )
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

end
