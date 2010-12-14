require 'test_helper'

class BlogPostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Posts are valid with title and body" do
    post = Factory :blog_post
    assert post.valid?
  end
  test "Posts are not valid without title" do
    assert !Factory.build(:blog_post, :title => nil).valid?
  end
  test "Posts are not valid without body" do
    assert !Factory.build(:blog_post, :body => nil).valid?
  end
end
