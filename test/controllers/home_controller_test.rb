require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "redirects unauthenticated visitors to sign in" do
    get root_path

    assert_redirected_to new_session_path
  end

  test "shows the template home to an authenticated user" do
    sign_in_as(users(:one))

    get root_path

    assert_response :success
    assert_select "h1", "Rails Base Template"
  end
end
