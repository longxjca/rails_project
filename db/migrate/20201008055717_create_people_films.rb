class CreatePeopleFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :people_films do |t|
      t.references :person, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
