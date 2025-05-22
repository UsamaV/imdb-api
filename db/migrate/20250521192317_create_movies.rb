class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.text :plot
      t.float :rating
      t.string :poster_url

      t.timestamps
    end
  end
end
