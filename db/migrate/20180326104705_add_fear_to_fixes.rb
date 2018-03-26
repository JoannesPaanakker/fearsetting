class AddFearToFixes < ActiveRecord::Migration[5.1]
  def change
    add_reference :fixes, :fear, foreign_key: true
  end
end
