class FixParkingTable < ActiveRecord::Migration
  def change
    remove_column :parkings, :creator
    add_column :parkings, :user_id, :integer
  end
end
