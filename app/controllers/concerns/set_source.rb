module SetSource
  extend ActiveSupport::Concern

  included do 
    before_action :set_source
  end

  def set_source
    # define where users came from for the session
    session[:source] = params[:q] if params[:q]
  end
end