class AddStoreUserIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :store_user_id, :integer
    add_index :items, :store_user_id
  end
end
