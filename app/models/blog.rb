class Blog < ApplicationRecord
  belongs_to :topic, optional: true
  
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  
  # testing for scopes
  def self.special_blogs
    limit(2)
  end  
end
