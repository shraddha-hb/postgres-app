class CreatePaymentNotification < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_notifications do |t|
    	t.text :params
      t.integer :cart_id
      t.string :status
      t.string :transaction_id
      t.timestamps
    end
  end
end
