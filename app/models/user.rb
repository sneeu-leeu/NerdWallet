class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :deals
  has_many :categories

  validates :name, :email, presence: true, length: { maximum: 100 }
  validates :email, uniqueness: true
end
