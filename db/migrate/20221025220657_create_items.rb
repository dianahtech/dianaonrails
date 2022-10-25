class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.float :weight
      t.decimal :value
      t.boolean :avaiable
      t.string :durl
      t.string :ean
      t.boolean :offer
      t.integer :buy_limit

      t.timestamps
    end
  end
end
