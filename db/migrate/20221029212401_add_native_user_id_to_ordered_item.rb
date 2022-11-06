class AddNativeUserIdToOrderedItem < ActiveRecord::Migration[6.1]
  def change    
    add_column :ordered_items, :native_user_id, :integer
    add_index :ordered_items, :native_user_id
  end
end
