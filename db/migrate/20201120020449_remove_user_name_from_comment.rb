class RemoveUserNameFromComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_name
  end
end
