class CreatePokemen < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemen do |t|
      t.numeric :entryNumber
      t.string :name
      t.boolean :legendary
      t.numeric :generation
      t.references :stat, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
