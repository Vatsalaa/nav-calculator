require "application_system_test_case"

class FundHistoriesTest < ApplicationSystemTestCase
  setup do
    @fund_history = fund_histories(:one)
  end

  test "visiting the index" do
    visit fund_histories_url
    assert_selector "h1", text: "Fund Histories"
  end

  test "creating a Fund history" do
    visit fund_histories_url
    click_on "New Fund History"

    fill_in "Date", with: @fund_history.date
    fill_in "Nav", with: @fund_history.nav
    click_on "Create Fund history"

    assert_text "Fund history was successfully created"
    click_on "Back"
  end

  test "updating a Fund history" do
    visit fund_histories_url
    click_on "Edit", match: :first

    fill_in "Date", with: @fund_history.date
    fill_in "Nav", with: @fund_history.nav
    click_on "Update Fund history"

    assert_text "Fund history was successfully updated"
    click_on "Back"
  end

  test "destroying a Fund history" do
    visit fund_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fund history was successfully destroyed"
  end
end
