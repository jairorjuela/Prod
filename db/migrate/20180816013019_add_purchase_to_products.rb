class AddPurchaseToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :purchase, foreign_key: true
  end
end
