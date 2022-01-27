require 'test_helper'

class MetaContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meta_content = meta_contents(:one)
  end

 # test "should get index" do
    get meta_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_meta_content_url
    assert_response :success
  end

  test "should create meta_content" do
    assert_difference('MetaContent.count') do
      post meta_contents_url, params: { meta_content: { description: @meta_content.description, keyword: @meta_content.keyword, title: @meta_content.title, website: @meta_content.website } }
    end

    assert_redirected_to meta_content_url(MetaContent.last)
  end

  test "should show meta_content" do
    get meta_content_url(@meta_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_meta_content_url(@meta_content)
    assert_response :success
  end

  test "should update meta_content" do
    patch meta_content_url(@meta_content), params: { meta_content: { description: @meta_content.description, keyword: @meta_content.keyword, title: @meta_content.title, website: @meta_content.website } }
    assert_redirected_to meta_content_url(@meta_content)
  end

  test "should destroy meta_content" do
    assert_difference('MetaContent.count', -1) do
      delete meta_content_url(@meta_content)
    end

    assert_redirected_to meta_contents_url
#  end
end
