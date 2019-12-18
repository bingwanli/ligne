require 'test_helper'

class UgcsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ugcs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get ugcs_destroy_url
    assert_response :success
  end

end
