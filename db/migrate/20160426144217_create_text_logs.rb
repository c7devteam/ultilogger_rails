class CreateTextLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :text_logs do |t|
      t.references :application, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
