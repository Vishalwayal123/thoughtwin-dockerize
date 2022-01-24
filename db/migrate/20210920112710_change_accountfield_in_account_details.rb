class ChangeAccountfieldInAccountDetails < ActiveRecord::Migration[5.2]
  def change
    change_column :account_details, :account_number, :bigint
    change_column :account_details, :aadhar_number, :bigint
  end
end
