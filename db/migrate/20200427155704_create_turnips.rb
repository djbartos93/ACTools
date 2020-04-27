class CreateTurnips < ActiveRecord::Migration[6.0]
  def change
    create_table :turnips do |t|
      t.integer :purchasePrice
      t.integer :amountPurchased
      t.integer :salePrice
      t.integer :spentBells
      t.integer :madeBells

      t.timestamps
    end
  end
end
