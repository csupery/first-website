require "application_system_test_case"

class VentesTest < ApplicationSystemTestCase
  setup do
    @vente = ventes(:one)
  end

  test "visiting the index" do
    visit ventes_url
    assert_selector "h1", text: "Ventes"
  end

  test "creating a Vente" do
    visit ventes_url
    click_on "New Vente"

    fill_in "Prix", with: @vente.prix
    fill_in "Produit", with: @vente.produit_id
    check "Remboursement" if @vente.remboursement
    fill_in "Statut vente", with: @vente.statut_vente
    fill_in "User", with: @vente.user_id
    click_on "Create Vente"

    assert_text "Vente was successfully created"
    click_on "Back"
  end

  test "updating a Vente" do
    visit ventes_url
    click_on "Edit", match: :first

    fill_in "Prix", with: @vente.prix
    fill_in "Produit", with: @vente.produit_id
    check "Remboursement" if @vente.remboursement
    fill_in "Statut vente", with: @vente.statut_vente
    fill_in "User", with: @vente.user_id
    click_on "Update Vente"

    assert_text "Vente was successfully updated"
    click_on "Back"
  end

  test "destroying a Vente" do
    visit ventes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vente was successfully destroyed"
  end
end
