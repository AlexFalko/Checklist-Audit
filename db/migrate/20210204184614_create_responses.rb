class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :answer
      t.string :description
      t.references :audit
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
