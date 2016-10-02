class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :story, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
