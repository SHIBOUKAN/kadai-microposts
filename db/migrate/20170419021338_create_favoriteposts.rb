class CreateFavoriteposts < ActiveRecord::Migration[5.0]
  def change
    create_table :favoriteposts do |t|

      t.timestamps
    end
  end
end
