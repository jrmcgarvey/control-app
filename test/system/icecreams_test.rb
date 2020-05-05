require "application_system_test_case"

class IcecreamsTest < ApplicationSystemTestCase
  setup do
    @icecream = icecreams(:one)
  end

  test "visiting the index" do
    visit icecreams_url
    assert_selector "h1", text: "Icecreams"
  end

  test "creating a Icecream" do
    visit icecreams_url
    click_on "New Icecream"

    fill_in "Count", with: @icecream.count
    fill_in "Flavor", with: @icecream.flavor
    fill_in "Name", with: @icecream.name
    check "New account" if @icecream.new_account
    fill_in "Size", with: @icecream.size
    click_on "Create Icecream"

    assert_text "Icecream was successfully created"
    click_on "Back"
  end

  test "updating a Icecream" do
    visit icecreams_url
    click_on "Edit", match: :first

    fill_in "Count", with: @icecream.count
    fill_in "Flavor", with: @icecream.flavor
    fill_in "Name", with: @icecream.name
    check "New account" if @icecream.new_account
    fill_in "Size", with: @icecream.size
    click_on "Update Icecream"

    assert_text "Icecream was successfully updated"
    click_on "Back"
  end

  test "destroying a Icecream" do
    visit icecreams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Icecream was successfully destroyed"
  end
end
