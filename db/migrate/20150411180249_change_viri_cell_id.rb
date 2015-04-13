class ChangeViriCellId < ActiveRecord::Migration
  def change
    change_column :viri, :cell_id, :integer, null: true
  end
end
