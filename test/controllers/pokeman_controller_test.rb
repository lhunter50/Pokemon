require 'test_helper'

class PokemanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokeman_index_url
    assert_response :success
  end

  test "should get show" do
    get pokeman_show_url
    assert_response :success
  end

end
