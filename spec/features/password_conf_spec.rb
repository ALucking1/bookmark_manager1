feature 'confirms password' do
  scenario 'when a user enters email and password' do

      visit "/signup"
      fill_in :username, with: 'bobthepanda@email.com'
      fill_in :password, with: 'Pandas4Life'
      fill_in :confirm_password, with: 'Pandas5Life'
      expect{click_button('Submit')}.to change{User.count}.by(0)
  end
end
