class AddNameToOranges < ActiveRecord::Migration[5.2]
  def change
    add_column :oranges, :name, :string
  end
end
