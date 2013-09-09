require 'test_helper'

class ProductquantitiesControllerTest < ActionController::TestCase
  setup do
    @productquantity = productquantities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productquantities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productquantity" do
    assert_difference('Productquantity.count') do
      post :create, productquantity: { id: @productquantity.id, purchasesid: @productquantity.purchasesid, quantity: @productquantity.quantity }
    end

    assert_redirected_to productquantity_path(assigns(:productquantity))
  end

  test "should show productquantity" do
    get :show, id: @productquantity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productquantity
    assert_response :success
  end

  test "should update productquantity" do
    put :update, id: @productquantity, productquantity: { id: @productquantity.id, purchasesid: @productquantity.purchasesid, quantity: @productquantity.quantity }
    assert_redirected_to productquantity_path(assigns(:productquantity))
  end

  test "should destroy productquantity" do
    assert_difference('Productquantity.count', -1) do
      delete :destroy, id: @productquantity
    end

    assert_redirected_to productquantities_path
  end
end
