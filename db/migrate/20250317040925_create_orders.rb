class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.string :status
      t.integer :total_price

      t.timestamps
    end
  end
end
