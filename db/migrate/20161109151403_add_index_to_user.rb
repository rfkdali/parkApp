class AddIndexToUser < ActiveRecord::Migration
  def change
    add_index :parkings, :user_id
  end
end
