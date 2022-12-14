require 'test_helper'

class EnrolledCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enrolled_courses_index_url
    assert_response :success
  end

end
