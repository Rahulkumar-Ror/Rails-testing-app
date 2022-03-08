require "test_helper"

class CategoryTest < ActiveSupport::TestCase 

  test "the truth" do
    assert true
  end  

  def setup 
    @category = Category.new(name: "Rahul")
  end

  test "should be valid" do
    assert @category.valid?
  end
      
  test "should not save without name" do
    @category.name = " "
    assert_not @category.save
  end

  test "should be unique" do
    @category.save
    @categoryl = Category.new(name: "Rahul")
    assert_not @categoryl.save
  end

end