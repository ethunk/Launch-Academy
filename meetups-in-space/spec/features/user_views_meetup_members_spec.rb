require 'spec_helper'

feature "user views members in a meetup" do
#   As a user
# I want to see who has already joined a meetup
# So that I can see if any of my friends have joined
# Acceptance Criteria:
#
# On a meetup's show page, I should see a list of the members that have joined the meetup.
# I should see each member's avatar and username.

  let!(:user1) do
    User.create(
    provider: "github",
    uid: "1",
    username: "carmenmart111",
    email: "carmen@launchacademy.com",
    avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )
  end

  let!(:user2) do
    User.create(
    provider: "github",
    uid: "2",
    username: "joelmau5",
    email: "joel@launchacademy.com",
    avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )
  end

  let!(:meetup) do
    Meetup.create(
    name: "I Heart Code",
    description: "Coders who love code sharing advice and projects.",
    location: "Innevation Center, Las Vargas, District 3, Mars",
    date: "June 16th, 2017, 7:00pm"
    )
  end

  let!(:membership1) do
      Membership.create(
      creator: false,
      user_id: user1.uid,
      meetup_id: meetup.id
      )
  end

  let!(:membership2) do
      Membership.create(
      creator: false,
      user_id: user2.uid,
      meetup_id: meetup.id
      )
  end

  scenario "sees members in a meetup" do

    visit("/")
    click_link("I Heart Code")
    visit("/meetups/#{meetup.id}")

    expect(page).to have_content("carmenmart111")
    expect(page).to have_content("carmen@launchacademy.com")

  end
end
