class CreateForumPosts < ActiveRecord::Migration
  def change
    create_table :forum_posts do |t|

      t.timestamps
    end
  end
end
