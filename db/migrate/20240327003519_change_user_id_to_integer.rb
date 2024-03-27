class ChangeUserIdToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :todos, :user_id, "numeric USING CAST(user_id AS numeric)"
    change_column :todos, :user_id, :integer
  end
end
