class CreateHackdays < ActiveRecord::Migration
  def change
    create_table :hackdays do |t|
      t.datetime :date
      t.string :name

      t.timestamps null: false
    end
  end
end
