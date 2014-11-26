class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name , presence: true
  validates :address, presence: true
  # validates_presence_of:
  validates :category, inclusion:  { in: %w(chinese italian japanese french belgian)}
end
