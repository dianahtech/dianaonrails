class AddStoreUserIdToOrderedItem < ActiveRecord::Migration[6.1]
  def change
    add_column :ordered_items, :store_user_id, :integer
    add_index :ordered_items, :store_user_id
  end
end
