require "application_system_test_case"

class BreastfeedsTest < ApplicationSystemTestCase
  setup do
    @breastfeed = breastfeeds(:one)
  end

  test "visiting the index" do
    visit breastfeeds_url
    assert_selector "h1", text: "Breastfeeds"
  end

  test "creating a Breastfeed" do
    visit breastfeeds_url
    click_on "New Breastfeed"

    fill_in "Baby", with: @breastfeed.baby_id
    fill_in "Feed time", with: @breastfeed.feed_time
    fill_in "Volume", with: @breastfeed.volume
    click_on "Create Breastfeed"

    assert_text "Breastfeed was successfully created"
    click_on "Back"
  end

  test "updating a Breastfeed" do
    visit breastfeeds_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @breastfeed.baby_id
    fill_in "Feed time", with: @breastfeed.feed_time
    fill_in "Volume", with: @breastfeed.volume
    click_on "Update Breastfeed"

    assert_text "Breastfeed was successfully updated"
    click_on "Back"
  end

  test "destroying a Breastfeed" do
    visit breastfeeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breastfeed was successfully destroyed"
  end
end
