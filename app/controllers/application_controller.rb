class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery prepend: true


  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContentConcern
end