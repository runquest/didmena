require 'test_helper'

class DomainsControllerTest < ActionController::TestCase
  setup do
    @domain = domains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:domains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create domain" do
    assert_difference('Domain.count') do
      post :create, domain: { code_value: @domain.code_value, domain_name: @domain.domain_name, meaning: @domain.meaning, note: @domain.note, special_case: @domain.special_case }
    end

    assert_redirected_to domain_path(assigns(:domain))
  end

  test "should show domain" do
    get :show, id: @domain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @domain
    assert_response :success
  end

  test "should update domain" do
    patch :update, id: @domain, domain: { code_value: @domain.code_value, domain_name: @domain.domain_name, meaning: @domain.meaning, note: @domain.note, special_case: @domain.special_case }
    assert_redirected_to domain_path(assigns(:domain))
  end

  test "should destroy domain" do
    assert_difference('Domain.count', -1) do
      delete :destroy, id: @domain
    end

    assert_redirected_to domains_path
  end
end
