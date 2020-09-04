class CreatePerks < ActiveRecord::Migration[6.0]
  def change
    create_table :perks do |t|
      t.boolean :insurance
      t.boolean :price_protection
      t.boolean :return_protection
      t.boolean :extended_warranty
      t.boolean :travel_credit
      t.boolean :global_entry
      t.boolean :lounge_access
      t.text :notes
      t.integer :credit_card_id

      t.timestamps
    end
  end
end
