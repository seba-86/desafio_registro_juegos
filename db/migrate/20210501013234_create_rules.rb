class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :description
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
