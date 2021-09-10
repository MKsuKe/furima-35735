class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :category
  belongs_to :charge
  belongs_to :day
  belongs_to :status

  VALID_PRICE = [3-9][0-9]{2}|[1-9][0-9]{3,6}
  validates :name, presence: true
  validates :detail, presence: true
  validates :area_id, presence: true, numericality: { other_than: 1 } 
  validates :category_id, presence: true, numericality: { other_than: 1 } 
  validates :charge_id, presence: true, numericality: { other_than: 1 } 
  validates :day_id, presence: true, numericality: { other_than: 1 } 
  validates :stauts_id, presence: true, numericality: { other_than: 1 }
  validates :price, presence: true ,format: { with: VALID_PRICE, message: 'error_message'}
  validates :image, presence: true
end
