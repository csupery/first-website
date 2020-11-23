require "application_system_test_case"

class CouleursTest < ApplicationSystemTestCase
  setup do
    @couleur = couleurs(:one)
  end

  test "visiting the index" do
    visit couleurs_url
    assert_selector "h1", text: "Couleurs"
  end

  test "creating a Couleur" do
    visit couleurs_url
    click_on "New Couleur"

    fill_in "Nom", with: @couleur.nom
    click_on "Create Couleur"

    assert_text "Couleur was successfully created"
    click_on "Back"
  end

  test "updating a Couleur" do
    visit couleurs_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @couleur.nom
    click_on "Update Couleur"

    assert_text "Couleur was successfully updated"
    click_on "Back"
  end

  test "destroying a Couleur" do
    visit couleurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Couleur was successfully destroyed"
  end
end
