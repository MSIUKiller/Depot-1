class Product < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 200}
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :weight, numericality: {only_integer: true, greate_than: 0}, allow_blank: true
end
