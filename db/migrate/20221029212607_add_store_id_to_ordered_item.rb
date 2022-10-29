class AddStoreIdToOrderedItem < ActiveRecord::Migration[6.1]
  def change
    add_column :ordered_items, :store_id, :integer
    add_index :ordered_items, :store_id
  end
end
