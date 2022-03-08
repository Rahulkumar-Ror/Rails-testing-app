require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do 
  it "renders the index template" do 
    get :index
    expect(response).to render_template("index")
  end

  it "renders the index template" do 
    post :new
    expect(response).to render_template("new")
  end 


  it "should create user" do
    expect do
    post :create, :params => {:category => {name: "rahul"}}
    end.to change(category, :count)
  end
end
