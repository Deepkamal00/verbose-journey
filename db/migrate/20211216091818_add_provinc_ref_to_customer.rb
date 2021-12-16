class AddProvincRefToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :provinc, :refernces
  end
end
