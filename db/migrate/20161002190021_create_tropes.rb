class CreateTropes < ActiveRecord::Migration[5.0]
  def change
    create_table :tropes do |t|
      t.references :story, foreign_key: true
      t.string :title
      t.text :description
      t.string :trope_url

      t.timestamps
    end
  end
end
