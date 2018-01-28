class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic, optional: true # Added 'optional: true' to bypass rails 5's change that makes all 'belongs_to's required for validations

  has_many :comments, dependent: :destroy

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end