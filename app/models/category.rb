class Category < ApplicationRecord
  has_many :produits, dependent: :destroy
  validates :name, presence: true
end
