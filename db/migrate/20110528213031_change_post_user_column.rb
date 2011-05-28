class ChangePostUserColumn < ActiveRecord::Migration
  def self.up
    drop_column :posts, :twitter_user
  end

  def self.down
    add_column :posts, :twitter_user, :string
  end
end
