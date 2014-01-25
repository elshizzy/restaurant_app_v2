class AddRestaurantReferenceToOpinions < ActiveRecord::Migration
  def change
    add_reference :opinions, :restaurant, index: true
  end
end
