class CreateJoinTablePurchases < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :purchases do |t|
      t.index :product_id
      t.index :purchase_id
    end
  end
end
