class RemoveFieldsFromCustomer < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :province_id, :integer
  end
end
