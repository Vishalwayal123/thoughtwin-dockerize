class CreateUnderTeamLeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :under_team_leaders do |t|
      t.integer :user_id
      t.string :department
      t.integer :employee_id

      t.timestamps
    end
  end
end
