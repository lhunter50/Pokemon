class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.numeric :totalStats
      t.numeric :hp
      t.numeric :attack
      t.numeric :defense
      t.numeric :spatk
      t.numeric :spdef
      t.numeric :speed

      t.timestamps
    end
  end
end
