class AddFieldToAccountDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :account_details, :pan_number, :string
    add_column :account_details, :aadhar_number, :integer
  end
end
