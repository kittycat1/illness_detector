require "application_system_test_case"

class IllnessesTest < ApplicationSystemTestCase
  setup do
    @illness = illnesses(:one)
  end

  test "visiting the index" do
    visit illnesses_url
    assert_selector "h1", text: "Illnesses"
  end

  test "creating a Illness" do
    visit illnesses_url
    click_on "New Illness"

    fill_in "Content", with: @illness.content
    fill_in "Name", with: @illness.name
    click_on "Create Illness"

    assert_text "Illness was successfully created"
    click_on "Back"
  end

  test "updating a Illness" do
    visit illnesses_url
    click_on "Edit", match: :first

    fill_in "Content", with: @illness.content
    fill_in "Name", with: @illness.name
    click_on "Update Illness"

    assert_text "Illness was successfully updated"
    click_on "Back"
  end

  test "destroying a Illness" do
    visit illnesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Illness was successfully destroyed"
  end
end
