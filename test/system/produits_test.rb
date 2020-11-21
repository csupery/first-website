require "application_system_test_case"

class ProduitsTest < ApplicationSystemTestCase
  setup do
    @produit = produits(:one)
  end

  test "visiting the index" do
    visit produits_url
    assert_selector "h1", text: "Produits"
  end

  test "creating a Produit" do
    visit produits_url
    click_on "New Produit"

    fill_in "Category", with: @produit.category_id
    fill_in "Couleur", with: @produit.couleur
    fill_in "Description", with: @produit.description
    fill_in "Marque", with: @produit.marque_id
    fill_in "Nom", with: @produit.nom
    fill_in "Prix", with: @produit.prix
    fill_in "Quantite", with: @produit.quantite
    fill_in "Reference", with: @produit.reference
    click_on "Create Produit"

    assert_text "Produit was successfully created"
    click_on "Back"
  end

  test "updating a Produit" do
    visit produits_url
    click_on "Edit", match: :first

    fill_in "Category", with: @produit.category_id
    fill_in "Couleur", with: @produit.couleur
    fill_in "Description", with: @produit.description
    fill_in "Marque", with: @produit.marque_id
    fill_in "Nom", with: @produit.nom
    fill_in "Prix", with: @produit.prix
    fill_in "Quantite", with: @produit.quantite
    fill_in "Reference", with: @produit.reference
    click_on "Update Produit"

    assert_text "Produit was successfully updated"
    click_on "Back"
  end

  test "destroying a Produit" do
    visit produits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produit was successfully destroyed"
  end
end
