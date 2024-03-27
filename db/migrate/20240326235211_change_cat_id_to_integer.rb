class ChangeCatIdToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :todos, :category_id, "numeric USING CAST(category_id AS numeric)"
    change_column :todos, :category_id, :integer
  end
end
