class ChangeColumnInRestaraunts < ActiveRecord::Migration
  def change
  	change_column :restaraunts, :user_id, :integer
  end
end
