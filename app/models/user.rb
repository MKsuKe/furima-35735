class User < ApplicationRecord
  has_many :items, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
  VALID_NAME = /\A[ぁ-んァ-ン一-龥]/
  VALID_NAME_RUBY = /\A[ァ-ヶー－]+\z/
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'error_message'}
  validates :nickname, presence: true
  validates :date_of_birth, presence: true
  validates :first_name, presence: true, format: { with: VALID_NAME, message: 'error_message'}
  validates :last_name, presence: true, format: { with: VALID_NAME, message: 'error_message'}
  validates :ruby_first_name, presence: true, format: { with: VALID_NAME_RUBY, message: 'error_message'}
  validates :ruby_last_name, presence: true, format: { with: VALID_NAME_RUBY, message: 'error_message'}
end
