class User < ApplicationRecord
  has_secure_password

  validates :name, unique: true, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }
end
