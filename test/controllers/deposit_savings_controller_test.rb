require 'test_helper'

class DepositSavingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get deposit_savings_new_url
    assert_response :success
  end

  test "should get create" do
    get deposit_savings_create_url
    assert_response :success
  end

  test "should get edit" do
    get deposit_savings_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get deposit_savings_destroy_url
    assert_response :success
  end

  test "should get show" do
    get deposit_savings_show_url
    assert_response :success
  end

  test "should get index" do
    get deposit_savings_index_url
    assert_response :success
  end

end
