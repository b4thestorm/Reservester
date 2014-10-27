class CreateRestaraunts < ActiveRecord::Migration
  def change
    create_table :restaraunts do |t|
    	t.string :name
    	t.string :description
    	t.string :address
    	t.string :number

    	t.timestamps
    end
  end
end
