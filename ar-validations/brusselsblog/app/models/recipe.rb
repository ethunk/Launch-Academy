class Recipe < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, inclusion: { with: 'Brussels sprouts'}
  validates :serving, numericality: { greater_than_or_equal_to: 1 }
end
