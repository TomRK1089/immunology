class AddStageToSystem < ActiveRecord::Migration
  def change
    add_column :systems, :stage, :string, default: "innate", unique: true
    add_column :systems, :meta_points, :integer, default: 30, unique: true
    add_column :systems, :balance_points, :integer, default: 0, unique: true
  end
end
