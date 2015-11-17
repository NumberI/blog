require "spec_helper"

feature "Article creation" do
  before(:each) do
    sign_up
  end
  


	scenario "allows user to visit new article page" do
		visit new_article_path
    
    expect(page).to have_content "New article"
  end
  
  scenario "allows user to make new article" do
    new_art
    
    expect(page).to have_content "bbbbbbbbbbbbbbbb"
  end
  
  
end


  