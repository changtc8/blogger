class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  validate :password, confirmation: true
  validate :password_confirmation, presence: true
  validate :username, uniqueness: true
  validates_confirmation_of :password, message: "should match the confirmation", if: :password
end
