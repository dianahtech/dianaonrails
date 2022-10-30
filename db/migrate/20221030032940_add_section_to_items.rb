class AddSectionToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :section, :string
  end
end
