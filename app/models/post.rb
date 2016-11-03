class Post < ActiveRecord::Base
  include PostAdmin

  belongs_to :user, :inverse_of => :posts

  validates :title, :body, :user, :presence => true
end
