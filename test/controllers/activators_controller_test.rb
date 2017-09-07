require 'test_helper'

class ActivatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activator = activators(:one)
  end

  test "should get index" do
    get activators_url
    assert_response :success
  end

  test "should get new" do
    get new_activator_url
    assert_response :success
  end

  test "should create activator" do
    assert_difference('Activator.count') do
      post activators_url, params: { activator: { color: @activator.color, commandline: @activator.commandline, description: @activator.description, name: @activator.name } }
    end

    assert_redirected_to activator_url(Activator.last)
  end

  test "should show activator" do
    get activator_url(@activator)
    assert_response :success
  end

  test "should get edit" do
    get edit_activator_url(@activator)
    assert_response :success
  end

  test "should update activator" do
    patch activator_url(@activator), params: { activator: { color: @activator.color, commandline: @activator.commandline, description: @activator.description, name: @activator.name } }
    assert_redirected_to activator_url(@activator)
  end

  test "should destroy activator" do
    assert_difference('Activator.count', -1) do
      delete activator_url(@activator)
    end

    assert_redirected_to activators_url
  end
end
