class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.belongs_to :user
      t.string :name
      t.text :description
      t.string :coordinates
      t.timestamps
    end
  end
end
