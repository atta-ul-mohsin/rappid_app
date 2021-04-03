require "application_system_test_case"

class FeebacksTest < ApplicationSystemTestCase
  setup do
    @feeback = feebacks(:one)
  end

  test "visiting the index" do
    visit feebacks_url
    assert_selector "h1", text: "Feebacks"
  end

  test "creating a Feeback" do
    visit feebacks_url
    click_on "New Feeback"

    fill_in "Content", with: @feeback.content
    fill_in "Grade", with: @feeback.grade
    fill_in "User", with: @feeback.user_id
    click_on "Create Feeback"

    assert_text "Feeback was successfully created"
    click_on "Back"
  end

  test "updating a Feeback" do
    visit feebacks_url
    click_on "Edit", match: :first

    fill_in "Content", with: @feeback.content
    fill_in "Grade", with: @feeback.grade
    fill_in "User", with: @feeback.user_id
    click_on "Update Feeback"

    assert_text "Feeback was successfully updated"
    click_on "Back"
  end

  test "destroying a Feeback" do
    visit feebacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feeback was successfully destroyed"
  end
end
