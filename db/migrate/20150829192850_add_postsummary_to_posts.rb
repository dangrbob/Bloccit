class AddPostsummaryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sum_id, :integer
    add_index :posts, :sum_id
  end
end
