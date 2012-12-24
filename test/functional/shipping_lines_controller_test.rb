require 'test_helper'

class ShippingLinesControllerTest < ActionController::TestCase
  setup do
    @shipping_line = shipping_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_line" do
    assert_difference('ShippingLine.count') do
      post :create, :shipping_line => { :address => @shipping_line.address, :city => @shipping_line.city, :company_name => @shipping_line.company_name, :contact_email => @shipping_line.contact_email, :contact_person => @shipping_line.contact_person, :contact_phone => @shipping_line.contact_phone, :country => @shipping_line.country, :description => @shipping_line.description, :state => @shipping_line.state }
    end

    assert_redirected_to shipping_line_path(assigns(:shipping_line))
  end

  test "should show shipping_line" do
    get :show, :id => @shipping_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shipping_line
    assert_response :success
  end

  test "should update shipping_line" do
    put :update, :id => @shipping_line, :shipping_line => { :address => @shipping_line.address, :city => @shipping_line.city, :company_name => @shipping_line.company_name, :contact_email => @shipping_line.contact_email, :contact_person => @shipping_line.contact_person, :contact_phone => @shipping_line.contact_phone, :country => @shipping_line.country, :description => @shipping_line.description, :state => @shipping_line.state }
    assert_redirected_to shipping_line_path(assigns(:shipping_line))
  end

  test "should destroy shipping_line" do
    assert_difference('ShippingLine.count', -1) do
      delete :destroy, :id => @shipping_line
    end

    assert_redirected_to shipping_lines_path
  end
end
