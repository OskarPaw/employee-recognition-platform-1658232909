
require 'rails_helper'

Rspec.describe 'Working with kudos' do
    let(:employee) {create(:employee) }

    before do
        sing_in employee
    end

    it 'allows user to perfom CRUD operations around his kudosd' do
        visit root_path

        click_link 'Create New Kudo'
        fill_in 'Title', with: 'Kudo title'
        fill_in 'Content', with: 'Kudo content'
        click_button 'Create Kudo'

        expect(page).to have_content 'Kudo was successfully created'
        expect(page).to have_content 'Kudo title'

        click_on 'Edit'

        fill_in 'Title', with: 'Kudo title edited'
        click_button 'Update Kudo'

        expect(page).to have_content 'Kudo title edited'

        click_on 'Remove'

        expect(page).to have_content 'Kudo was successfully removed'
    end
end

