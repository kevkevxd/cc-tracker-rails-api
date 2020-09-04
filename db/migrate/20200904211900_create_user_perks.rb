class CreateUserPerks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_perks do |t|
      t.integer :user_id
      t.integer :perk_id

      t.timestamps
    end
  end
end
