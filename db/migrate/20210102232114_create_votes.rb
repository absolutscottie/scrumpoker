class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :username
      t.string :value
      t.references :poker
      t.timestamps
    end
  end
end