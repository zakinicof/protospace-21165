class Comment < ApplicationRecord

  validates :text, presence: true
  belongs_to :user
  belongs_to :prototype, optional: true
end
