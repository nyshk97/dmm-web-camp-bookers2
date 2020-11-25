class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :thumbnail
  has_many :books
  validates :name, presence: true, length: {in: 2..20}, uniqueness: true
  validates :introduction, length: {maximum: 50}
end
