# frozen_string_literal: true

require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get game_show_url
    assert_response :success
  end

  test 'should get create' do
    get game_create_url
    assert_response :success
  end
end
