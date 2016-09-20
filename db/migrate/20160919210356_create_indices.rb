class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
	  t.belongs_to :films, index: true 
	  t.belongs_to :actors, index: true
	  t.belongs_to :articles, index: true
      t.timestamps null: false
    end
  end
end
