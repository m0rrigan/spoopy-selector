class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :year, null: false
      t.text :summary, null: false
    end
  end
end
