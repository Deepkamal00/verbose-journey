class RemoveFullNameFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :fullname, :string
  end
end
