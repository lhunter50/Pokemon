class RemoveNameRow < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemen, :name, :string
  end
end
