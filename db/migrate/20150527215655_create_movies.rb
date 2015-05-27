class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :bro_score
      t.string :actors
      t.string :director
      t.text :description

      t.timestamps null: false
    end
  end
end
