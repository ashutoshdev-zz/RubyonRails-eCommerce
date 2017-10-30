require 'test_helper'

class TarunsControllerTest < ActionDispatch::IntegrationTest
  test "should get jayu_post" do
    get taruns_jayu_post_url
    assert_response :success
  end

end
