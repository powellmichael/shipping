require 'test_helper'

class ShippingLineOfficesControllerTest < ActionController::TestCase
  setup do
    @shipping_line_office = shipping_line_offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_line_offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_line_office" do
    assert_difference('ShippingLineOffice.count') do
      post :create, :shipping_line_office => { :area_address => @shipping_line_office.area_address }
    end

    assert_redirected_to shipping_line_office_path(assigns(:shipping_line_office))
  end

  test "should show shipping_line_office" do
    get :show, :id => @shipping_line_office
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shipping_line_office
    assert_response :success
  end

  test "should update shipping_line_office" do
    put :update, :id => @shipping_line_office, :shipping_line_office => { :area_address => @shipping_line_office.area_address }
    assert_redirected_to shipping_line_office_path(assigns(:shipping_line_office))
  end

  test "should destroy shipping_line_office" do
    assert_difference('ShippingLineOffice.count', -1) do
      delete :destroy, :id => @shipping_line_office
    end

    assert_redirected_to shipping_line_offices_path
  end
end
