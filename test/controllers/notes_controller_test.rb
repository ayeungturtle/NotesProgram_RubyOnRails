require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get notes_add_url
    assert_response :success
  end

  test "should get delete" do
    get notes_delete_url
    assert_response :success
  end

  test "should get reorder" do
    get notes_reorder_url
    assert_response :success
  end

end
