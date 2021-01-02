class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :pokerid
      t.string :integer
      t.string :username
      t.string :string
      t.string :value
      t.string :string

      t.timestamps
    end
  end
end
