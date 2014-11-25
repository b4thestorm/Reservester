class AddUserIdToRestaraunts < ActiveRecord::Migration
  def change
  	add_column :restaraunts, :user_id, :string
  end
end
