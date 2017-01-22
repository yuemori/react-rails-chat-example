class Room < ApplicationRecord
  belongs_to :user
  has_many :messages

  validates :user, presence: true, uniqueness: true
  validates :name, presence: true
end
