require "application_system_test_case"

class SkusTest < ApplicationSystemTestCase
  setup do
    @sku = skus(:one)
  end

  test "visiting the index" do
    visit skus_url
    assert_selector "h1", text: "Skus"
  end

  test "should create sku" do
    visit skus_url
    click_on "New sku"

    fill_in "Description", with: @sku.description
    fill_in "Name", with: @sku.name
    fill_in "Tenant", with: @sku.tenant_id
    click_on "Create Sku"

    assert_text "Sku was successfully created"
    click_on "Back"
  end

  test "should update Sku" do
    visit sku_url(@sku)
    click_on "Edit this sku", match: :first

    fill_in "Description", with: @sku.description
    fill_in "Name", with: @sku.name
    fill_in "Tenant", with: @sku.tenant_id
    click_on "Update Sku"

    assert_text "Sku was successfully updated"
    click_on "Back"
  end

  test "should destroy Sku" do
    visit sku_url(@sku)
    click_on "Destroy this sku", match: :first

    assert_text "Sku was successfully destroyed"
  end
end
