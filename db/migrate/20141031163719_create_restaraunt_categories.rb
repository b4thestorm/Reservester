class CreateRestarauntCategories < ActiveRecord::Migration
  def change
    create_table :restaraunt_categories do |t|
    	t.integer :restaraunt_id, :category_id
    	t.timestamps
    end
  end
end
