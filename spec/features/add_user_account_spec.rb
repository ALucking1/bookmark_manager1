feature 'adding a user account' do
  scenario 'when a user enters email and password' do

      visit "/signup"
      fill_in :username, with: 'bobthepanda@email.com'
      fill_in :password, with: 'Pandas4Life'
      fill_in :confirm_password, with: 'Pandas4Life'
      expect{click_button('Submit')}.to change{User.count}.by(1)
      expect(page).to have_current_path('/links')
      user = User.first
      expect(user.username).to include('bobthepanda@email.com')
      expect(page).to have_content('Welcome')
      expect(page).to have_content('Welcome, bobthepanda@email.com')
  end
end
