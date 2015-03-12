require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Add Post" do
    post = Post.create(title: "Hello World", body: "Hello KangKyu, This is the world.")

    assert_difference 'Post.count'
  end

end
