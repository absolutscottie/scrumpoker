require 'test_helper'

class PokersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokers_index_url
    assert_response :success
  end

end
