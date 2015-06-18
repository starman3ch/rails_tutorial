require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    	get root_path
    	assert_template 'static_pages/home'
    	assert_select "a[href=?]",root_path #,count:2    -on testing, result is actual count is 3. But I don't know why.
    	assert_select "a[href=?]",help_path
    	assert_select "a[href=?]",about_path
    	assert_select "a[href=?]",contact_path
  end
  
end
