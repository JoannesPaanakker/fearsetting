class CreateFears < ActiveRecord::Migration[5.1]
  def change
    create_table :fears do |t|
      t.string :description

      t.timestamps
    end
  end
end
