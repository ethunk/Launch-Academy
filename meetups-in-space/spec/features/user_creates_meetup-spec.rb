require 'spec_helper'

feature "user creates a meetup" do

  # As a user
  # I want to create a meetup
  # So that I can gather a group of people to do an activity
  # Acceptance Criteria:
  #
  # There should be a link from the meetups index page that takes you to the meetups new page. On this page there is a form to create a new meetup.
  # I must be signed in, and I must supply a name, location, and description.
  # If the form submission is successful, I should be brought to the meetup's show page, and I should see a message that lets me know that I have created a meetup successfully.
  # If the form submission is unsuccessful, I should remain on the meetups new page, and I should see error messages explaining why the form submission was unsuccessful.
  # The form should be pre-filled with the values that were provided when the form was submitted.


  scenario "user creates their own meetup" do
    user = FactoryGirl.create(:user, username: "teddys31")

    visit "/"
    sign_in_as user
    click_link "Create A Meetup"

    fill_in "Name Your Meetup:", with: "The Goalie Guild"
    fill_in "Describe Your Meetup:", with: "Ice hockey goalies, getting together to stop all pucks in the universe."
    fill_in "Date Of Your Meetup", with: "July 12th, 2017, 4:00pm"
    fill_in "Location Of Your Meetup", with: "T-Mobile Arena, Las Vargas, District 3, Mars"
    save_and_open_page
    click_button "Submit"

    expect(page).to have_content("The Goalie Guild")
    expect(page).to have_content("Ice hockey goalies, getting together to stop all pucks in the universe.")
    expect(page).to have_coantent("T-Mobile Arena, Las Vargas, District 3, Mars")

  end

  scenario "user fails to fill form out to create meetup" do
    visit "/"
    sign_in_as user
    click_link "Create A Meetup"

    fill_in "name", with: "The Goalie Guild"
    fill_in "date", with: "July 12th, 2017, 4:00pm"
    click_button "Submit"

    expect(page).to have_content("You must fill in a description")
    expect(page).to have_content("You must fill in a location")
  end

end
