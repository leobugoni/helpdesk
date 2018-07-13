require "application_system_test_case"

class HelpdesksTest < ApplicationSystemTestCase
  setup do
    @helpdesk = helpdesks(:one)
  end

  test "visiting the index" do
    visit helpdesks_url
    assert_selector "h1", text: "Helpdesks"
  end

  test "creating a Helpdesk" do
    visit helpdesks_url
    click_on "New Helpdesk"

    fill_in "Cachorro", with: @helpdesk.cachorro
    fill_in "Gato", with: @helpdesk.gato
    fill_in "Id Seq", with: @helpdesk.id_seq
    fill_in "Valor", with: @helpdesk.valor
    click_on "Create Helpdesk"

    assert_text "Helpdesk was successfully created"
    click_on "Back"
  end

  test "updating a Helpdesk" do
    visit helpdesks_url
    click_on "Edit", match: :first

    fill_in "Cachorro", with: @helpdesk.cachorro
    fill_in "Gato", with: @helpdesk.gato
    fill_in "Id Seq", with: @helpdesk.id_seq
    fill_in "Valor", with: @helpdesk.valor
    click_on "Update Helpdesk"

    assert_text "Helpdesk was successfully updated"
    click_on "Back"
  end

  test "destroying a Helpdesk" do
    visit helpdesks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Helpdesk was successfully destroyed"
  end
end
