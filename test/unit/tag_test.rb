require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Tags have a topic" do
    assert !Factory.build(:tag, :topic => nil).valid?
  end
end
