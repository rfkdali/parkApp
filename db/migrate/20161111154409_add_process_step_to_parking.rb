class AddProcessStepToParking < ActiveRecord::Migration
  def change
    add_column :parkings, :process_step, :string
  end
end
