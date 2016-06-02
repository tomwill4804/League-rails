class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.date :date
      t.string :text
      t.references :team

      t.timestamps null: false
    end
  end
end
