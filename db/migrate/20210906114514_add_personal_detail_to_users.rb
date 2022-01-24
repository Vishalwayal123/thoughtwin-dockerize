class AddPersonalDetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :doj, :date
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :contact_number, :integer
    add_column :users, :father_name, :string
    add_column :users, :father_contact, :integer
    add_column :users, :mother_name, :string
    add_column :users, :mother_contact, :string
    add_column :users, :present_address, :string
    add_column :users, :permanent_address, :string
    add_column :users, :email_primary, :string
    add_column :users, :blood_group, :string
    add_column :users, :religion, :string
    add_column :users, :language_known, :string
    add_column :users, :martial_status, :string
    add_column :users, :if_yes_spouse_contact_number, :integer
    add_column :users, :profile_image, :string

  end
end
