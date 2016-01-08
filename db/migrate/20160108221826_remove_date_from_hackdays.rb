class RemoveDateFromHackdays < ActiveRecord::Migration
  def change
    remove_column :hackdays, :date, :datetime
  end
end
