class ChangeContactInUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :mother_contact, :bigint , using: 'mother_contact::bigint'
  end
end
