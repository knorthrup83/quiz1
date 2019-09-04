class CreateUsersAndRecipesAndIngredientsTables < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.timestamps
    end

    create_table :recipes do |t|
      t.references "user"
      t.string "title"
      t.string "description"
      t.string :image
    end

    create_table :ingredients do |t|
      t.references :recipe
      t.string :ingredient
      t.timestamps
    end
  end
end
