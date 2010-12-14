require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "authors have name" do
    assert !Factory.build(:author, :name => nil).valid?
  end
end
