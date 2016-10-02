class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
