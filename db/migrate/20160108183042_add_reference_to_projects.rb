class AddReferenceToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :hackday, index: true, foreign_key: true
  end
end
