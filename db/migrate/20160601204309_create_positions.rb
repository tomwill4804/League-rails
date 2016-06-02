class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :ptype
      t.string :officer
      t.integer :spikes, default: 0
      t.integer :assists, default: 0
      t.integer :gamesPlayed, default: 0
      t.references :team
      t.references :user

      t.timestamps null: false
    end
  end
end
