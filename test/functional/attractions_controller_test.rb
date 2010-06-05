require 'test_helper'

class AttractionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attraction" do
    assert_difference('Attraction.count') do
      post :create, :attraction => { }
    end

    assert_redirected_to attraction_path(assigns(:attraction))
  end

  test "should show attraction" do
    get :show, :id => attractions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => attractions(:one).to_param
    assert_response :success
  end

  test "should update attraction" do
    put :update, :id => attractions(:one).to_param, :attraction => { }
    assert_redirected_to attraction_path(assigns(:attraction))
  end

  test "should destroy attraction" do
    assert_difference('Attraction.count', -1) do
      delete :destroy, :id => attractions(:one).to_param
    end

    assert_redirected_to attractions_path
  end
end
