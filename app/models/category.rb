class Category < ApplicationRecord
  has_many :produits, dependent: :destroy
end
