require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest 
 
	def setup
	  @category = Category.new(name: "Rahul")
	end
    
	test "should get index" do
    get categories_index_path  
		assert_response :success
  end
  
	test "should get new" do
	  get categories_new_path
		assert_response :success
	end
  
	test "should create user" do
		assert_difference('User.account') do
			post categories_index_path, params: {category: {name: @category.name}}
    end
		assert_redirected_to categories_show_path(Category.last)
	end

end