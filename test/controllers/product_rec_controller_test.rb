require 'test_helper'

class ProductRecControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get product_rec_create_url
    assert_response :success
  end

end
