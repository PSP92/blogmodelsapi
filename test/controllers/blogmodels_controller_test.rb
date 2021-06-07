require "test_helper"

class BlogmodelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogmodel = blogmodels(:one)
  end

  test "should get index" do
    get blogmodels_url, as: :json
    assert_response :success
  end

  test "should create blogmodel" do
    assert_difference('Blogmodel.count') do
      post blogmodels_url, params: { blogmodel: { body: @blogmodel.body, title: @blogmodel.title } }, as: :json
    end

    assert_response 201
  end

  test "should show blogmodel" do
    get blogmodel_url(@blogmodel), as: :json
    assert_response :success
  end

  test "should update blogmodel" do
    patch blogmodel_url(@blogmodel), params: { blogmodel: { body: @blogmodel.body, title: @blogmodel.title } }, as: :json
    assert_response 200
  end

  test "should destroy blogmodel" do
    assert_difference('Blogmodel.count', -1) do
      delete blogmodel_url(@blogmodel), as: :json
    end

    assert_response 204
  end
end
