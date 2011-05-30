class AddTwitterUserToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :twitter_user, :string
  end

  def self.down
    remove_column :posts, :twitter_user
  end
end
