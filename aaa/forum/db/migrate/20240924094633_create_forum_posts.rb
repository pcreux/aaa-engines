class CreateForumPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :forum_posts do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
