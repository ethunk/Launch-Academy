require "spec_helper"

feature "user views list of TV shows" do
  # As a TV fanatic
  # I want to view a list of TV shows
  # So I can find new shows to watch
  #
  # Acceptance Criteria:
  # * I can see the names and networks of all TV shows

  scenario "view list of TV shows" do
    # First create some sample TV shows
    game_of_thrones = TelevisionShow.create!({
        title: "Game of Thrones", network: "HBO",
        starting_year: 2011, genre: "Fantasy"
      })

    married_with_children = TelevisionShow.create!({
        title: "Married... with Children", network: "Fox",
        starting_year: 1987, ending_year: 1997,
        genre: "Comedy"
      })

    # The user visits the index page
    visit "/television_shows"

    # And should see both TV shows listed (just the title and network)
    expect(page).to have_content("Game of Thrones (HBO)")
    expect(page).to have_content("Married... with Children (Fox)")
  end

  # As a TV fanatic
  # I want to view the details for a TV show
  # So I can find learn more about it

  # Acceptance Criteria:
  # * I can see the title, network, start and end year, genre, and synopsis
  #   for a show.
  # * If the end year is not provided it should indicate that the show is still
  #   running.

  scenario "view details for a TV show" do
    rubicon = TelevisionShow.create!({
      title: "Rubicon", network: "AMC",
      starting_year: 2012, ending_year: 2013 ,genre: "Drama",
      synopsis: "Intelligence contractor discovers a conspiracy with a devastating threat."
    })
    visit "/television_shows"
    click_link "Rubicon (AMC)"

    expect(page).to have_content("Rubicon")
    expect(page).to have_content("AMC")
    expect(page).to have_content("Drama")
    expect(page).to have_content(2012)
    expect(page).to have_content(2013)
    expect(page).to have_content("Intelligence contractor discovers a conspiracy with a devastating threat.")

  end

  scenario "view details for a TV show with missing information" do
    rubicon = TelevisionShow.create!({
      title: "The Americans", network: "FX",
      starting_year: 2012, genre: "Drama",
      synopsis: "Two Russian spies trying to make it in 1980's America."
    })
    visit "/television_shows"
    click_link "The Americans (FX)"
    expect(page).to have_content("The Americans")
    expect(page).to have_content("FX")
    expect(page).to have_content("Drama")
    expect(page).to have_content(2012)
    #i'm thinking of creating a boolean in the show.erb file that if it is `nil`
    #then i would put "running" but i was not sure
  end
end
