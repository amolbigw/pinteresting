require 'test_helper'

class GlobalcontactsControllerTest < ActionController::TestCase
  setup do
    @globalcontact = globalcontacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:globalcontacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create globalcontact" do
    assert_difference('Globalcontact.count') do
      post :create, globalcontact: { email: @globalcontact.email, facebook: @globalcontact.facebook, firstname: @globalcontact.firstname, lastname: @globalcontact.lastname, linkedin: @globalcontact.linkedin, twitterid: @globalcontact.twitterid }
    end

    assert_redirected_to globalcontact_path(assigns(:globalcontact))
  end

  test "should show globalcontact" do
    get :show, id: @globalcontact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @globalcontact
    assert_response :success
  end

  test "should update globalcontact" do
    patch :update, id: @globalcontact, globalcontact: { email: @globalcontact.email, facebook: @globalcontact.facebook, firstname: @globalcontact.firstname, lastname: @globalcontact.lastname, linkedin: @globalcontact.linkedin, twitterid: @globalcontact.twitterid }
    assert_redirected_to globalcontact_path(assigns(:globalcontact))
  end

  test "should destroy globalcontact" do
    assert_difference('Globalcontact.count', -1) do
      delete :destroy, id: @globalcontact
    end

    assert_redirected_to globalcontacts_path
  end
end
