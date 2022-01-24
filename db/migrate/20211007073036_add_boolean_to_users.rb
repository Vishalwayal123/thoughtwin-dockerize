class AddBooleanToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :department, :string
    add_column :users, :is_team_leader, :boolean
    add_column :users, :team_leader, :string
    add_column :users, :role, :string
  end
end
