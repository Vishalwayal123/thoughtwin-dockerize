class ChangeLimitInUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :contact_number, :integer,limit: 8
    change_column :users, :father_contact, :integer,limit: 8
    change_column :users, :if_yes_spouse_contact_number, :integer,limit: 8
  end
end
