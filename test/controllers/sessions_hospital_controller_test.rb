require 'test_helper'

class SessionsHospitalControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_hospital_new_url
    assert_response :success
  end

end
