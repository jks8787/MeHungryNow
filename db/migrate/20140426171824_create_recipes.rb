class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :imageurl
      t.text :ingredientlist
      t.string :yummlyid
    end
  end
end
