class AddAttributesToBlogPosts < ActiveRecord::Migration
  def self.up
    add_column :blog_posts, :title, :string
    add_column :blog_posts, :body, :string
  end

  def self.down
    remove_column :blog_posts, :title
    remove_column :blog_posts, :body
  end
end
