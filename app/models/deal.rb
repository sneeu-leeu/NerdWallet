class Deal < ApplicationRecord
  validates :name, :amount, :categories, presence: true, length: { maximum: 100 }

  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categories
end
