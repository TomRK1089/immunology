class CreateViri < ActiveRecord::Migration
  def change
    create_table :viri do |t|
      t.text :status, null: false, default: "latent"
      t.integer :system_id, null: false
      t.integer :cell_id, null: false

      t.timestamps
    end
  end
end
