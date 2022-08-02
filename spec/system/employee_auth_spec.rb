
require 'rails_helper'

Rspec.describe 'Employee authentication actions' do
    let (:employee) { build(:employee) }

    it 'Setup employee account' do
        visit root_path

        click_link 'Sing up'
        fill_in 'Email', with:  employee.email
        fill_in 'Password', with: employee.password
        fill_in 'Password confirmation', with: employee.password
        click_button 'Sing up'

        expect(page).to have_content 'Welcome! You have singed up successfully'

        click_on 'Log out'
        expect(page).to have_content 'You need to sign in or sing up before continuing'

        click_link 'Log in'
        fill_in 'Email', with: employee.email
        fill_in 'Password', with: employee.password
        click_button 'Log in'

        expect(page).to have_content 'Singed in successfully'
    end
end

