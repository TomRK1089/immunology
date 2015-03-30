class CreateTest < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string "nothing"
    end
  end
end
