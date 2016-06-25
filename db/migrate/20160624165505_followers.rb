class Followers < ActiveRecord::Migration
  def change
  	add_column :companies , :followers_count , :integer , :default => 0
  end
end
