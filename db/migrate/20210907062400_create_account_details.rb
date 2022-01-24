class CreateAccountDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :account_details do |t|
      t.integer :account_number
      t.string :ifsc_code
      t.string :branch_address
      t.string :pan_card
      t.string :aadhar_card
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
