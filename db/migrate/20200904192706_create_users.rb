class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.int :accrued_points
      t.int :accrued_cash
      t.date :point_expirations

      t.timestamps
    end
  end
end
