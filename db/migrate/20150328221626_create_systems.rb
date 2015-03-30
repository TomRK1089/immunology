class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :status, default: "uncompromised"
      t.integer :memory, default: 0
      t.boolean :differentiation, default: true
      t.boolean :apoptosis, default: false
      t.boolean :pyrogenation, default: false
    end
  end
end
