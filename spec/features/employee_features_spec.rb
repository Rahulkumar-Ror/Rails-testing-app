require 'rails_helper'

RSpec.describe Employee, type: :feature do 
  it "fills in the details" do
    visit new_employee_path
    fill_in "name", with: "rahul"
    fill_in "department", with: "ece"
    click_button "create Employee"
    expect(page).to have_text("Employee was successfully created")
end
end
