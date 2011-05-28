class Post < ActiveRecord::Base
  belongs_to :theme
  belongs_to :twitter_user
end
