class AddChallengeToFears < ActiveRecord::Migration[5.1]
  def change
    add_reference :fears, :challenge, foreign_key: true
  end
end
