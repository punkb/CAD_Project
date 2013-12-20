require 'test_helper'

class LivingexpensesControllerTest < ActionController::TestCase
  setup do
    @livingexpense = livingexpenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livingexpenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livingexpense" do
    assert_difference('Livingexpense.count') do
      post :create, livingexpense: { AccomodationCost: @livingexpense.AccomodationCost, City: @livingexpense.City, Country_name: @livingexpense.Country_name, FoodCost: @livingexpense.FoodCost, TransportationCost: @livingexpense.TransportationCost, UserID: @livingexpense.UserID }
    end

    assert_redirected_to livingexpense_path(assigns(:livingexpense))
  end

  test "should show livingexpense" do
    get :show, id: @livingexpense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livingexpense
    assert_response :success
  end

  test "should update livingexpense" do
    put :update, id: @livingexpense, livingexpense: { AccomodationCost: @livingexpense.AccomodationCost, City: @livingexpense.City, Country_name: @livingexpense.Country_name, FoodCost: @livingexpense.FoodCost, TransportationCost: @livingexpense.TransportationCost, UserID: @livingexpense.UserID }
    assert_redirected_to livingexpense_path(assigns(:livingexpense))
  end

  test "should destroy livingexpense" do
    assert_difference('Livingexpense.count', -1) do
      delete :destroy, id: @livingexpense
    end

    assert_redirected_to livingexpenses_path
  end
end
