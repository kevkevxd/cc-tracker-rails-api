class CreatePerks < ActiveRecord::Migration[6.0]
  def change
    create_table :perks do |t|
      t.string :insurance
      t.string :spending_categories
      t.string :price_protection
      t.string :return_protection
      t.string :extended_warranty

      t.timestamps
    end
  end
end
