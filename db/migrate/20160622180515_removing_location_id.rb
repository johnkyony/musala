class RemovingLocationId < ActiveRecord::Migration
  def change
  	remove_column :jobs , :location , :integer
  end
end
