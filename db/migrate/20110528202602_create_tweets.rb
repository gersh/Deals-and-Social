class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string :twitter_user
      t.references :theme
      t.string :tweet

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
