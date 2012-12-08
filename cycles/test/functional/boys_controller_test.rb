require 'test_helper'

class BoysControllerTest < ActionController::TestCase
  setup do
    @boy = boys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boy" do
    assert_difference('Boy.count') do
      post :create, boy: { cycle_weight: @boy.cycle_weight, description: @boy.description, image_url: @boy.image_url, price: @boy.price, product_name: @boy.product_name }
    end

    assert_redirected_to boy_path(assigns(:boy))
  end

  test "should show boy" do
    get :show, id: @boy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boy
    assert_response :success
  end

  test "should update boy" do
    put :update, id: @boy, boy: { cycle_weight: @boy.cycle_weight, description: @boy.description, image_url: @boy.image_url, price: @boy.price, product_name: @boy.product_name }
    assert_redirected_to boy_path(assigns(:boy))
  end

  test "should destroy boy" do
    assert_difference('Boy.count', -1) do
      delete :destroy, id: @boy
    end

    assert_redirected_to boys_path
  end
end
