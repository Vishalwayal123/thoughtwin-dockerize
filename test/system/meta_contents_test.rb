require "application_system_test_case"

class MetaContentsTest < ApplicationSystemTestCase
  setup do
    @meta_content = meta_contents(:one)
  end

  test "visiting the index" do
    visit meta_contents_url
    assert_selector "h1", text: "Meta Contents"
  end

  test "creating a Meta content" do
    visit meta_contents_url
    click_on "New Meta Content"

    fill_in "Description", with: @meta_content.description
    fill_in "Keyword", with: @meta_content.keyword
    fill_in "Title", with: @meta_content.title
    fill_in "Website", with: @meta_content.website
    click_on "Create Meta content"

    assert_text "Meta content was successfully created"
    click_on "Back"
  end

  test "updating a Meta content" do
    visit meta_contents_url
    click_on "Edit", match: :first

    fill_in "Description", with: @meta_content.description
    fill_in "Keyword", with: @meta_content.keyword
    fill_in "Title", with: @meta_content.title
    fill_in "Website", with: @meta_content.website
    click_on "Update Meta content"

    assert_text "Meta content was successfully updated"
    click_on "Back"
  end

  test "destroying a Meta content" do
    visit meta_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meta content was successfully destroyed"
  end
end
