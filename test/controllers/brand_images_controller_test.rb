require 'test_helper'

class BrandImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brand_images_index_url
    assert_response :success
  end

  test "should get show" do
    get brand_images_show_url
    assert_response :success
  end

end
