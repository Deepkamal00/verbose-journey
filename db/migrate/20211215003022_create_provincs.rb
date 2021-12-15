class CreateProvincs < ActiveRecord::Migration[6.1]
  def change
    create_table :provincs do |t|
      t.string :name
      t.decimal :pst
      t.decimal :hst

      t.timestamps
    end
  end
end
