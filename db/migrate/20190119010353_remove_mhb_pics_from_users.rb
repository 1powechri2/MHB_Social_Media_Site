class RemoveMhbPicsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :mhb_pics, :text
  end
end
