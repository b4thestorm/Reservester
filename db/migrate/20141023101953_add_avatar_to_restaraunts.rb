class AddAvatarToRestaraunts < ActiveRecord::Migration
  def change
    add_column :restaraunts, :avatar, :string
  end
end
