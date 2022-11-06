class CreateOrderedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_items do |t|
      t.string :status   
      t.string :final_value    
      t.string :payment_mode
      t.json   :items


      t.timestamps
    end
  end
end
