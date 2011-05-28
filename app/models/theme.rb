class Theme < ActiveRecord::Base
  has_many :phrases
  has_many :tweets
  has_many :posts
end
