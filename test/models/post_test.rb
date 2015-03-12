require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Add Post" do
    assert_difference 'Post.count' do
      post = Post.new(title: "Hello World", body: "Hello KangKyu, This is the world.")
      post.save
    end
    
  end

end
