require 'rails_helper'

describe 'user management' do
  it 'can create a user' do
    visit '/'
    click_on "Athletes"
    expect(page).not_to have_content "Colin Osborn"

    click_on "Create Athlete"

    fill_in "Name", with: "Colin Osborn"
    fill_in "Height", with: 176
    fill_in "Weight", with: 62

    click_on "Create New Athlete"

    expect(page).to have_content "Athlete Successfully Created"
    expect(page).to have_content "Colin Osborn"

    click_on "Athletes"

    expect(page).to have_content "Colin Osborn"
  end

  it 'can edit an athlete' do
    visit '/'
    click_on "Athletes"

    click_on "Create Athlete"

    fill_in "Name", with: "Colin Osborn"
    fill_in "Height", with: 176
    fill_in "Weight", with: 62

    click_on "Create New Athlete"

    expect(page).to have_content "Athlete Successfully Created"
    expect(page).to have_content "Colin Osborn"

    click_on "Athletes"

    expect(page).to have_content "Colin Osborn"

    click_on "Edit Athlete"

  end
end
