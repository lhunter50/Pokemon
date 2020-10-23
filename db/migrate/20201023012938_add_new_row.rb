class AddNewRow < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemen, :pokemonName, :string
  end
end
