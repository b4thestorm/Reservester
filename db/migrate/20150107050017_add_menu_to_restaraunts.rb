class AddMenuToRestaraunts < ActiveRecord::Migration
  def change
  	add_column :restaraunts, :menu, :string
  end
end
