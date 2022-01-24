require "application_system_test_case"

class SupportEmailsTest < ApplicationSystemTestCase
  setup do
    @support_email = support_emails(:one)
  end

  test "visiting the index" do
    visit support_emails_url
    assert_selector "h1", text: "Support Emails"
  end

  test "creating a Support email" do
    visit support_emails_url
    click_on "New Support Email"

    fill_in "Email", with: @support_email.email
    click_on "Create Support email"

    assert_text "Support email was successfully created"
    click_on "Back"
  end

  test "updating a Support email" do
    visit support_emails_url
    click_on "Edit", match: :first

    fill_in "Email", with: @support_email.email
    click_on "Update Support email"

    assert_text "Support email was successfully updated"
    click_on "Back"
  end

  test "destroying a Support email" do
    visit support_emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support email was successfully destroyed"
  end
end
