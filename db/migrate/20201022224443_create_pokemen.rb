class CreatePokemen < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemen do |t|
      t.numeric :entryNumber
      t.string :name
      t.boolean :legendary
      t.numeric :generation
      t.references :Stats, null: false, foreign_key: true
      t.references :Type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
