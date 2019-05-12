require 'application_system_test_case'

class CandidatesTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit candidates_url
    assert_selector 'h1', text: 'Candidates'
  end
end
