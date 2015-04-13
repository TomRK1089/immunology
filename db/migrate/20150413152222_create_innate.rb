class CreateInnate < ActiveRecord::Migration
  def change
    create_table :innates do |t|
      t.integer :system_id, null: false
      t.integer :cytokines, default: 0
      t.integer :macro_molecules, default: 0
      t.integer :phagocytes, default: 0

      t.timestamps
    end
    add_index :innates, :system_id, unique: true
  end
end
