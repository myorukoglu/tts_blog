class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
  end

  # make sure that username is unique
  add_index :users, :username, unique: true
end
