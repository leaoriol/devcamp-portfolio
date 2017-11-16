module Placeholder
  extend ActiveSupport::Concern

  # add method that can be accessed by several models
  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
end