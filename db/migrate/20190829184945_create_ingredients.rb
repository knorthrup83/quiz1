class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
    	t.references :recipe
    	t.text :instructions
    	t.string :ingredient
    	t.string :image
      t.timestamps
    end
  end
end
