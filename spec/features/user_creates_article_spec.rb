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
  
  scenario "allows user to edit article" do
    article = create(:article, author: "bbbbb"  )
    visit edit_article_path(article)
    fill_in :article_title, :with => "qqqqqqqqs"
    click_button "Save"
    expect(page).to have_content "qqqqqqqqs"
  end
  
  
end


  