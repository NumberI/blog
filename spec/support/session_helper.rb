def sign_up
  visit new_user_registration_path

  fill_in 'user_email', :with => "bbbb@123.com"
  fill_in 'user_username', :with => "bbbbb"
  fill_in 'user_password', :with => "bbbb123@a"
  fill_in 'user_password_confirmation', :with => "bbbb123@a"
  click_button "Sign up"
end

def new_art
  visit new_article_path

  fill_in 'article_title', :with => "12345"
  fill_in 'article_text', :with => "bbbbbbbbbbbbbbbb"
  click_button "Blabla"
end

