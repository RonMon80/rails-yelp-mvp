class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true #validates :name, :adress, presence: :true (Posso colocar tudo junto em uma linha só)
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end