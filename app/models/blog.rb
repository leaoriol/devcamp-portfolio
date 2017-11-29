class Blog < ApplicationRecord
  belongs_to :topic, optional: true
  
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
end
