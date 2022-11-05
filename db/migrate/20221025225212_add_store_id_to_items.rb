class AddStoreIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :store_id, :integer
    add_index :items, :store_id
  end
end
