require 'rails_helper'

RSpec.feature "add new event" do

    scenario "allow user to add new event", js: true do
    	visit 'events'
    	click_on "New Event"

    	fill_in "Event Name", with: "SummerCamp"
    	fill_in "Event From", with: "2015/10/01"
    	fill_in "Event To", with: "2015/10/25/"
    	fill_in "Event Deadline", with: "2015/09/01"
    	fill_in "Price Before Deadline", with: 100
    	fill_in "Price After Deadline", with: 125

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