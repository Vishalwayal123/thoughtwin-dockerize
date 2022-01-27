require 'test_helper'

class SupportEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_email = support_emails(:one)
  end

  test "should get index" do
    get support_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_support_email_url
    assert_response :success
  end

  test "should create support_email" do
    assert_difference('SupportEmail.count') do
      post support_emails_url, params: { support_email: { email: @support_email.email } }
    end

    assert_redirected_to support_email_url(SupportEmail.last)
  end

  test "should show support_email" do
    get support_email_url(@support_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_email_url(@support_email)
    assert_response :success
  end

  test "should update support_email" do
    patch support_email_url(@support_email), params: { support_email: { email: @support_email.email } }
    assert_redirected_to support_email_url(@support_email)
  end

  #test "should destroy support_email" do
    #assert_difference('SupportEmail.count', -1) do
      #delete support_email_url(@support_email)
    #end

    #assert_redirected_to support_emails_url
  #end
end
