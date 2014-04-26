class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.references :users, index: true
      t.references :recipes, index: true
      t.timestamps
    end
  end
end
