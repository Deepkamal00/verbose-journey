class AddFieldsToProvincs < ActiveRecord::Migration[6.1]
  def change
    add_column :provincs, :gsst, :decimal
  end
end
