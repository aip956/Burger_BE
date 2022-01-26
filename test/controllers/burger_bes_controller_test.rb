require "test_helper"

class BurgerBesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @burger_be = burger_bes(:one)
  end

  test "should get index" do
    get burger_bes_url, as: :json
    assert_response :success
  end

  test "should create burger_be" do
    assert_difference('BurgerBe.count') do
      post burger_bes_url, params: { burger_be: { details: @burger_be.details, subject: @burger_be.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show burger_be" do
    get burger_be_url(@burger_be), as: :json
    assert_response :success
  end

  test "should update burger_be" do
    patch burger_be_url(@burger_be), params: { burger_be: { details: @burger_be.details, subject: @burger_be.subject } }, as: :json
    assert_response 200
  end

  test "should destroy burger_be" do
    assert_difference('BurgerBe.count', -1) do
      delete burger_be_url(@burger_be), as: :json
    end

    assert_response 204
  end
end
