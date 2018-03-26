class AddChallengeToBenefits < ActiveRecord::Migration[5.1]
  def change
    add_reference :benefits, :challenge, foreign_key: true
  end
end
