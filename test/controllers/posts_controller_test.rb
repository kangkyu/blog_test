require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # setup do
  #   @post = posts(:one)
  # end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should show post" do
    get :show, id: posts(:one).id
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { title: "Hello World", body: "Hello KangKyu, This is the world." }
    end

    assert_redirected_to post_path(assigns(:post))
  end
end




# :success to indicate 200-299, 
# :redirect to indicate 300-399, 
# :missing to indicate 404, or 
# :error to match the 500-599 range