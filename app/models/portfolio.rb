class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: 'react')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'ruby on rails') }
end
