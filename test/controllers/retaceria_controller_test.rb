require 'test_helper'

class RetaceriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retacerium = retaceria(:one)
  end

  test "should get index" do
    get retaceria_url
    assert_response :success
  end

  test "should get new" do
    get new_retacerium_url
    assert_response :success
  end

  test "should create retacerium" do
    assert_difference('Retacerium.count') do
      post retaceria_url, params: { retacerium: { category_id: @retacerium.category_id, color_id: @retacerium.color_id, cost: @retacerium.cost, name: @retacerium.name, rinde: @retacerium.rinde } }
    end

    assert_redirected_to retacerium_url(Retacerium.last)
  end

  test "should show retacerium" do
    get retacerium_url(@retacerium)
    assert_response :success
  end

  test "should get edit" do
    get edit_retacerium_url(@retacerium)
    assert_response :success
  end

  test "should update retacerium" do
    patch retacerium_url(@retacerium), params: { retacerium: { category_id: @retacerium.category_id, color_id: @retacerium.color_id, cost: @retacerium.cost, name: @retacerium.name, rinde: @retacerium.rinde } }
    assert_redirected_to retacerium_url(@retacerium)
  end

  test "should destroy retacerium" do
    assert_difference('Retacerium.count', -1) do
      delete retacerium_url(@retacerium)
    end

    assert_redirected_to retaceria_url
  end
end
