class AddVoteCacheToPosts < ActiveRecord::Migration[5.1]
  def self.up
    add_column :posts, :cached_votes_up, :integer, :default => 0
    add_index  :posts, :cached_votes_up

    # Uncomment this line to force caching of existing votes
    Post.find_each(&:update_cached_votes)
  end
  def self.down
    remove_column :posts, :cached_votes_up
  end
end
