require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get candidates_url
    assert_response :success
  end
end
