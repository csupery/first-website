class Category < ApplicationRecord
  has_many :produits, dependent: :destroy
  belongs_to :genre
  validates :name, presence: true
end
