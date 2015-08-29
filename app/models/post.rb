class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to :topic
  has_one :postsummary

  default_scope {order('created_at DESC')}
end
