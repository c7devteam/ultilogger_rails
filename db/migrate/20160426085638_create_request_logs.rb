class CreateRequestLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :request_logs do |t|
      t.references :application, foreign_key: true
      t.integer :user_id
      t.string :action
      t.string :controller
      t.text :params

      t.timestamps
    end
  end
end
