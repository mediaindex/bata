class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :titre
      t.text :synopsis
      t.date :date_sortie
      t.string :Producteur
      t.string :note
      t.string :casting
      t.string :origine

      t.timestamps null: false
    end
  end
end
