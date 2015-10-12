class RenameVoteColumn < ActiveRecord::Migration
  def change
    rename_column :votes, :in_favor?, :vote_value
    change_column :votes, :vote_value, :integer
  end
end
