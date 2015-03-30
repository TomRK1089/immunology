class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :status, default: "uncompromised"
      t.integer :memory, default: 0
      t.boolean :differentiation, default: true
      t.boolean :apoptosis, default: false
      t.boolean :pyrogenation, default: false
      t.integer :user_id, null: false
    end
    add_index :systems, :user_id, unique: true
  end
end
