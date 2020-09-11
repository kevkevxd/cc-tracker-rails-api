class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :accrued_points, default: 0
      t.integer :accrued_cash, default: 0
      t.date :point_expirations

      t.timestamps
    end
  end
end
