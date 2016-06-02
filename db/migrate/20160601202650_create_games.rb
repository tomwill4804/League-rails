class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date
      t.string :location
      t.references :home_team
      t.references :away_team

      t.timestamps null: false
    end
  end
end
