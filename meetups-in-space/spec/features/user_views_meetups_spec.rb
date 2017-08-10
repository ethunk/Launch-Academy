require 'spec_helper'

feature "user views list of meetups" do

  # As a user
  # I want to view a list of all available meetups
  # So that I can get together with people with similar interests

  # Acceptance Criteria:
  # On the meetups index page, I should see the name of each meetup.
  # Meetups should be listed alphabetically.

  scenario "views meetups on index page sorted alphabetically" do
    iheartcodemeetup = Meetup.create({
      name: "I Heart Code",
      description: "Coders who love code sharing advice and projects.",
      location: "Innevation Center, Las Vargas, District 3, Mars",
      date: "June 16th, 2017, 7:00pm",
    })

    runnersunitemeetup = Meetup.create({
      name: "Runners Unite",
      description: "Runner enthusiasts running fun trails and competitions together.",
      location: "Freemont Street Experience, Las Vargas, District 3, Mars",
      date: "June 17th, 2017, 6:30pm",
    })

    # binding.pry
    visit "/"

    expect(page).to have_content("I Heart Code")
    expect(page).to have_content("Runners Unite")

  end
end
