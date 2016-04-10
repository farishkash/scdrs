require 'rails_helper'

RSpec.feature "add new guest" do

    scenario "allow user to add a guest", js: true, focus: true do
    	visit 'events'
    	click_on "New Guest"

    	fill_in "Name", with: "John Doe"
    	fill_in "Address", with: "1234 Street Lane"
    	fill_in "City", with: "Valencia"
    	fill_in "State", with: "CA"
    	fill_in "Zip", with: 90000
    	fill_in "Email", with: "guest@example.com"
        fill_in "Phone Number", with: "123456789"

    	#sleep(inspection_time=5)

    	click_on "Submit"

    	#sleep(inspection_time=5)

    	expect(page).to have_content "SummerCamp"
    	expect(page).to have_content "10/01/2015"
    	expect(page).to have_content "10/25/2015"
    	expect(page).to have_content "09/01/2015"
    	expect(page).to have_content 100
    	expect(page).to have_content 125

    end
end