class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :status, default: "uncompromised"
      t.integer :memory, default: 0
      t.integer :differentiation, default: 10
      t.integer :apoptosis, default: 3
      t.integer :pyrogenation, default: 3
      t.integer :user_id, null: false
    end
    add_index :systems, :user_id, unique: true
  end
end
