class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.references :text_log, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
