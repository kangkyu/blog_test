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
    assert_difference('Post.count', 1) do
      post :create, post: { title: "Hello World", body: "Hello KangKyu, This is the world." }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should update post" do
    patch :update, id: posts(:one).id, post: { title: "Hello World", body: "Hello KangKyu, This is the world." }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: posts(:one).id
    end
    assert_redirected_to posts_path
  end
end




# :success to indicate 200-299, 
# :redirect to indicate 300-399, 
# :missing to indicate 404, or 
# :error to match the 500-599 range