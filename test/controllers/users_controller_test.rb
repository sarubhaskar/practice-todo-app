require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "email", "password_digest"], data.keys
  end
end
