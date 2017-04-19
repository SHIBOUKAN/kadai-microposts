class AddMicropostIdToFavoriteposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :favoriteposts, :micropost, foreign_key: true
  end
end
