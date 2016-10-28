class Post < ActiveRecord::Base
  include PostAdmin

  belongs_to :user

  validates :title, :body, :user, :presence => true
end
