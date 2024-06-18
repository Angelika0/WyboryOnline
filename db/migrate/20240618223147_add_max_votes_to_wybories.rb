class AddMaxVotesToWybories < ActiveRecord::Migration[7.1]
  def change
    add_column :wybories, :max_votes, :integer, default: 1
  end
end
