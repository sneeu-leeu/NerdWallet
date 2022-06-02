class Category < ApplicationRecord
  validates :name, :icon, presence: true, length: { maximum: 300 }

  belongs_to :user
  has_and_belongs_to_many :deals

  def total_amount
    deals.sum('amount')
  end
end
