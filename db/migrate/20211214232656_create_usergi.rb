class CreateUsergi < ActiveRecord::Migration[6.1]
  def change
    create_table :usergis do |t|

      t.timestamps
    end
  end
end
