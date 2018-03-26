class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.boolean :acceptable
      t.string :cost_inaction_hy
      t.string :cost_inaction_yr
      t.string :cost_inaction_3y

      t.timestamps
    end
  end
end
