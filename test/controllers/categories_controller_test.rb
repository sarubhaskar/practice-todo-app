require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "create" do
    assert_difference "Category.count", 1 do
      post "/categories.json", params: { name: "lake" }
      assert_response 200
    end
  end

  test "show" do
    get "/categories/#{Category.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name"], data.keys
  end
end
