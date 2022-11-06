class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :section
      t.float :weight
      t.decimal :value
      t.string :durl
      t.string :ean
      t.integer :buy_limit
      t.boolean :offer
      t.boolean :available
      
      t.timestamps
    end
  end
end
