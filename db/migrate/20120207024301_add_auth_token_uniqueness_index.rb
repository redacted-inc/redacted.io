class AddAuthTokenUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :users, :auth_token, :unique => true
  end

  def down
    remove_index :users, :auth_token
  end
end
