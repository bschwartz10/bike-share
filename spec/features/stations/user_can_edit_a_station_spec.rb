require_relative "../../spec_helper"

RSpec.describe "When a user edits a station" do
  it "the station name is changed" do
    city = City.create(name: "Denver")
    station1 = city.stations.create(name: "Turing", dock_count: 100, installation_date: "14/3/2017")
    station2 = city.stations.create(name: "Galvanize", dock_count: 1, installation_date: "1/4/1972")

    visit '/stations/2/edit'
    fill_in 'station[name]', with: 'GSchool'
    click_on 'Submit'

    expect(current_path).to eq '/stations/2'
    expect(page).to have_content 'GSchool'
    expect(page).to_not have_content 'Galvanize'
  end
end
