require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get root_url
    assert_response :success
  end

  test 'should see login' do
    get root_url
    assert_select 'a', 'Login'
  end

  class LoggedUserTest < ActionDispatch::IntegrationTest
    setup do
      sign_in create(:user)
    end

    test 'should see email' do
      get root_url
      assert_select 'span', URI::MailTo::EMAIL_REGEXP
    end

    test 'should see logout' do
      get root_url
      assert_select 'a', 'Logout'
    end
  end
end
