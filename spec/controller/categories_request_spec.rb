require 'rails_helper'

RSpec.describe Category, type: :request do 
  #   it "gets all users" do
	#     category = Category.create(name: "Rahul")
	# 	get categories_index_path
	# 	expect(response).to be_successful
	# 	expect(response.body).to include("rahul")
	# end

	it "assigns @category" do
		category = Category.create(name: "rahul")
		get categories_index_path
		expect(assigns(:categories)).to eq([category])
	end


end
