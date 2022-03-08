require 'rails_helper'

RSpec.describe Category, type: :feature do 
  it "fills in the details" do
    visit categories_new_path
    fill_in "name", with: "rahul"

    click_button "create Category"
    expect(page).to have_text("Ctaegory was successfully created")
end
end
