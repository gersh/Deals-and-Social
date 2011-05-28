class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :theme
      t.references :twitter_user
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
