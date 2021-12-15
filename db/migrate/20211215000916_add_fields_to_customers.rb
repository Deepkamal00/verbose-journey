class AddFieldsToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :fullname, :string
    add_column :customers, :address, :string
    add_column :customers, :postalcode, :string
    add_column :customers, :province_id, :integer
    add_column :customers, :email, :string
  end
end
