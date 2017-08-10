require 'spec_helper'

feature "user views details of meetups" do
#   As a user
# I want to view the details of a meetup
# So that I can learn more about its purpose
# Acceptance Criteria:
#
# On the index page, the name of each meetup should be a link to the meetup's show page.
# On the show page, I should see the name, description, location, and the creator of the meetup.

  scenario "views information of meetup" do
    iheartcodemeetup = Meetup.create({
      name: "I Heart Code",
      description: "Coders who love code sharing advice and projects.",
      location: "Innevation Center, Las Vargas, District 3, Mars",
      date: "June 16th, 2017, 7:00pm",
    })

    visit "/"
    click_link "I Heart Code"

    expect(page).to have_content("Coders who love code sharing advice and projects")
    expect(page).to have_content("Innevation Center, Las Vargas, District 3, Mars")
  end
end
