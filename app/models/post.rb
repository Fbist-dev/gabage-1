class Post < ApplicationRecord
  validates :title, presence: true
  validates :rate, presence: true


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "rate", "title", "updated_at"]
  end
end
