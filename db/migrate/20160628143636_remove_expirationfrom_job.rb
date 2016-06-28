class RemoveExpirationfromJob < ActiveRecord::Migration
  def change
  	remove_column :jobs , :expiration , :string
  	add_column :jobs , :posted , :date
  end
end
