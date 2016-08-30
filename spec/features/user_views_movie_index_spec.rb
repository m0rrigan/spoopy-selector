require 'rails_helper'

feature "user sees a list of movies" do
  let!(:nmbc) { FactoryGirl.create(:movie) }
  let!(:strangeland) { FactoryGirl.create(:movie, title: "Strangeland") }

  scenario "sees a list of planets" do
    visit movies_path

    expect(page).to have_content nmbc.title
  end

  scenario "movies are listed alphabetically" do
    visit movies_path

    expect(strangeland.title).to appear_before(nmbc.title)
  end
  #
  # scenario "index is paginated to have ten planets per page" do
  #   9.times do
  #     FactoryGirl.create(:planet)
  #   end
  #
  #   visit planets_path
  #
  #   expect(page).to have_content alderaan.name
  #   expect(page).to_not have_content utapau.name
  #
  #   visit '/planets?page=2'
  #
  #   expect(page).to have_content utapau.name
  # end
end
