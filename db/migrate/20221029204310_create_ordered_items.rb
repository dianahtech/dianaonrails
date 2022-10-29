class CreateOrderedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_items do |t|
      t.string :status
      t.string :date
      t.string :final_value

      t.timestamps
    end
  end
end
