class AddAuthTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :auth_type, :integer, :default => 0
  end
end
