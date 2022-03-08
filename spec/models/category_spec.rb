require 'rails_helper'

RSpec.describe Category, type: :model do 
  before do
    @category = Category.new(name: "Rahul")
  end
  
  it "should be valid with valid attributes" do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it "factory bot" do
    category = FactoryBot.created(:category)
    expect(category).to be_valid
  end
end
