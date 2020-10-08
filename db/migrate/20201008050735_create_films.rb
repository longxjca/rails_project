class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.sting :title
      t.string :director
      t.string :release_date

      t.timestamps
    end
  end
end
