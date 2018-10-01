require 'test_helper'

class ProductMerceriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_mercerium = product_merceria(:one)
  end

  test "should get index" do
    get product_merceria_url
    assert_response :success
  end

  test "should get new" do
    get new_product_mercerium_url
    assert_response :success
  end

  test "should create product_mercerium" do
    assert_difference('ProductMercerium.count') do
      post product_merceria_url, params: { product_mercerium: { article: @product_mercerium.article, cost: @product_mercerium.cost, current_stock: @product_mercerium.current_stock, initial_stock: @product_mercerium.initial_stock, minimum: @product_mercerium.minimum, name: @product_mercerium.name, price: @product_mercerium.price } }
    end

    assert_redirected_to product_mercerium_url(ProductMercerium.last)
  end

  test "should show product_mercerium" do
    get product_mercerium_url(@product_mercerium)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_mercerium_url(@product_mercerium)
    assert_response :success
  end

  test "should update product_mercerium" do
    patch product_mercerium_url(@product_mercerium), params: { product_mercerium: { article: @product_mercerium.article, cost: @product_mercerium.cost, current_stock: @product_mercerium.current_stock, initial_stock: @product_mercerium.initial_stock, minimum: @product_mercerium.minimum, name: @product_mercerium.name, price: @product_mercerium.price } }
    assert_redirected_to product_mercerium_url(@product_mercerium)
  end

  test "should destroy product_mercerium" do
    assert_difference('ProductMercerium.count', -1) do
      delete product_mercerium_url(@product_mercerium)
    end

    assert_redirected_to product_merceria_url
  end
end
