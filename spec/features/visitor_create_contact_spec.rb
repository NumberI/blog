require "spec_helper"

feature "Contact creation" do
	scenario "allows access to contact page" do
		visit "/contacts"

    expect(page).to have_content I18n.t('contacts.contact_us')
	end
  
  scenario "allows a guest to create contact" do
    visit "/contacts"
    fill_in :contact_email, :with => "123@123.com"
    fill_in :contact_message, :with => "asdasd"
    click_button "Send message"
    
    expect(page).to have_content 'Спасибо!'
  end
end