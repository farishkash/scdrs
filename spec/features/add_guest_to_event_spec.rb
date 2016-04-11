require 'rails_helper'

RSpec.feature "add new guest" do
    let!(:event){create(:event)}

    scenario "allow user to add a guest", js: true, focus: true do
    	visit 'guests'
    	click_on "New Guest"

    	fill_in "Name", with: "John Doe"
    	fill_in "Address", with: "1234 Street Lane"
    	fill_in "City", with: "Valencia"
    	fill_in "State", with: "CA"
    	fill_in "Zip", with: "90000"
    	fill_in "Email", with: "guest@example.com"
        fill_in "Phone Number", with: "123456789"
        select 'Event One', from: 'guest_event_id'

    	sleep(inspection_time=5)

    	click_on "Submit"

    	sleep(inspection_time=5)

    	expect(page).to have_content "John Doe"
    	expect(page).to have_content "1234 Street Lane"
    	expect(page).to have_content "Valencia"
    	expect(page).to have_content "CA"
    	expect(page).to have_content "90000"
    	expect(page).to have_content "guest@example.com"
        expect(page).to have_content "123456789"

    end
end