class LocationChangeType < ActiveRecord::Migration
  def change
  	add_column :jobs , :location , :string
  end
end
