class AddClosedFieldToHackday < ActiveRecord::Migration
  def change
    add_column :hackdays, :closed, :boolean
  end
end
