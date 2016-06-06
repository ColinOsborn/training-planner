require 'rails_helper'

describe "work creation" do
  it "can create a workout" do
    visit '/'
    click_on "Athletes"
    expect(page).not_to have_content "Colin Osborn"

    click_on "Create Athlete"

    fill_in "Name", with: "Fredrik Kessiakoff"
    fill_in "Height", with: "5'9"
    fill_in "Weight", with: 137
    fill_in "Age", with: 35
    fill_in "Location", with: "Stockholm, Sweden"

    click_on "Create New Athlete"

    expect(page).to have_content "Athlete Successfully Created"
    expect(page).to have_content "Fredrik Kessiakoff"

    click_on "Athletes Homepage"

    click_on "Fredrik Kessiakoff"

    click_on "New Workout"

    fill_in "Time", with: "5:15"
    fill_in "Distance", with: 106

    click_on "Create New Workout"

    expect(page).to have_content "Workout Successfully Created"
    # expect(page).to have_content "Workouts by Fredrik Kessiakoff"
    expect(page).to have_content "5:15"
    expect(page).to have_content 106
  end
end
