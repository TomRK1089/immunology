class CreateSystem < ActiveRecord::Migration
  def change
    create_table :systems do |t|
    t.text :status, default: "uncompromised", null: false
    t.integer :memory, default: 0, null: false
    t.boolean :apoptosis, default: false, null: false
    t.boolean :pyrogenation, default: false, null: false

    t.timestamps
    end
  end
end
