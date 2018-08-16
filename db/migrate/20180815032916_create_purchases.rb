class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :name_purchases

      t.timestamps null: false
    end
  end
end
