class AddFieldsToRecipes < ActiveRecord::Migration[5.2]
  def change
  	add_column :recipes, :user_id, :integer
  	add_column :recipes, :title, :string
	add_column :recipes, :description, :text
  end
end
