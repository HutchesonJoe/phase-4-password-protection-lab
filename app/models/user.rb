class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true
  # validates :username, presence: true

  # validates :password_confirmation, presence: true
  validate :passwords_match

  def passwords_match
    password_confirmation && password == password_confirmation
  end
end
