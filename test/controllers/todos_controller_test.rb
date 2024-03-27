require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/todos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Todo.count, data.length
  end

  test "create" do
    assert_difference "Todo.count", 1 do
      post "/todos.json", params: { user_id: "lake", category_id: "800", title: "600", description: "test", deadline: "test", completed: "test" }
      assert_response 200
    end
  end

  test "show" do
    get "/todos/#{Todo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["user_id", "category_id", "title", "description", "deadline", "completed"], data.keys
  end

  test "update" do
    todo = Todo.first
    patch "/todos/#{todo.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end
end
