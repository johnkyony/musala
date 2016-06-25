class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :link
      t.references :company, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true
      t.string :expiration

      t.timestamps null: false
    end
  end
end
