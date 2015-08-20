class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  scope :ordered_by_title, -> {reorder('title')}

  scope :ordered_by_reverse_created_at, -> {reorder('created_at DESC')} 

  default_scope {order('created_at DESC')}
end

