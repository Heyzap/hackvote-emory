class AddStartAndEndToHackdays < ActiveRecord::Migration
  def change
    add_column :hackdays, :start, :datetime
    add_column :hackdays, :end, :datetime
  end
end
