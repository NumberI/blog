require "spec_helper"

feature "Comment creation" do
  before(:each) do
    sign_up
  end
 
 scenario "allows user to make comment" do
    article = create(:article)
    visit article_path(article)
    fill_in :comment_body, :with => "ssssqqqqqqqqs"
    click_button "Create"
    expect(page).to have_content "ssssqqqqqqqqs"
 end
end