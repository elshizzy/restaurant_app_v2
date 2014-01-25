class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :category
      t.string :price
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :hours
      t.float :rating
      t.string :menu
    end
  end
end
