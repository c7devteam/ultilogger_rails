class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :token
      t.boolean :active, default: false

      t.timestamps
    end
    add_index :applications, :name, unique: true
  end
end
