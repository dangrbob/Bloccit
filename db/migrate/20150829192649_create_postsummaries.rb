class CreatePostsummaries < ActiveRecord::Migration
  def change
    create_table :postsummaries do |t|
      t.text :curtpost

      t.timestamps
    end
  end
end
