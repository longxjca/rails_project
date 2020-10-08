class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :birth_year
      t.string :gender
      t.references :species, null: false, foreign_key: true
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
