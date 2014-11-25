class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.string :email
    	t.string :text
    	t.integer :datetime
    	t.integer :restaraunt_id

    end
  end
end
