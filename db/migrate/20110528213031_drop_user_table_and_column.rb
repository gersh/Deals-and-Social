class DropUserTableAndColumn < ActiveRecord::Migration
  def self.up
    remove_column :posts, :twitter_user_id
    drop_table :twitter_users
  end

  def self.down
    add_column :posts, :twitter_user, :string
    create_table :twitter_users do |t|
      t.string :twitter_user
      t.timestamps
    end
  end
end
