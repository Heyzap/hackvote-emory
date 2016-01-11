class ChangeVotesColumnsToNonNull < ActiveRecord::Migration
  def change
    change_column_null :votes, :user_id, false
    change_column_null :votes, :project_id, false
  end
end
