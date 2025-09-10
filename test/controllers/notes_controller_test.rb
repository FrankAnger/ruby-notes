require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end

test "should get index" do
  get notes_url
  assert_response :success
end
