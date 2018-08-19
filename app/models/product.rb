class Product < ApplicationRecord
  belongs_to :category
  belongs_to :purchase


  by_star_field :date_product

end
