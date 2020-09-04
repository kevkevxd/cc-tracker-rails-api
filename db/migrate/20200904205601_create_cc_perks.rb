class CreateCcPerks < ActiveRecord::Migration[6.0]
  def change
    create_table :cc_perks do |t|
      t.integer :credit_card_id
      t.integer :perk_id

      t.timestamps
    end
  end
end
