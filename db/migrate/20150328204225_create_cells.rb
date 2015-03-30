class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.text :status, null: false, default: "antibody"
      t.integer :system_id, null: false

      t.timestamps
    end
  end
end
