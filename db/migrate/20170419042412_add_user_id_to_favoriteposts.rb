class AddUserIdToFavoriteposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :favoriteposts, :user, foreign_key: true
  end
end
