class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :type1
      t.string :type2

      t.timestamps
    end
  end
end
