class RemovingLocation < ActiveRecord::Migration
  def change
  	remove_column :jobs , :location , :string
  	add_column :jobs , :place , :string
  end
end
