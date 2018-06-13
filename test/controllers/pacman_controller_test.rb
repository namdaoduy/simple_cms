require 'test_helper'

class PacmanControllerTest < ActionDispatch::IntegrationTest
  test "should get pacman" do
    get pacman_pacman_url
    assert_response :success
  end

end
