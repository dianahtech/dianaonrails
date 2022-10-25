require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    check "Avaiable" if @item.avaiable
    fill_in "Buy limit", with: @item.buy_limit
    fill_in "Durl", with: @item.durl
    fill_in "Ean", with: @item.ean
    fill_in "Name", with: @item.name
    check "Offer" if @item.offer
    fill_in "Value", with: @item.value
    fill_in "Weight", with: @item.weight
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    check "Avaiable" if @item.avaiable
    fill_in "Buy limit", with: @item.buy_limit
    fill_in "Durl", with: @item.durl
    fill_in "Ean", with: @item.ean
    fill_in "Name", with: @item.name
    check "Offer" if @item.offer
    fill_in "Value", with: @item.value
    fill_in "Weight", with: @item.weight
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
