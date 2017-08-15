class AddPaymentStatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :payment_status, :string
  end
end
