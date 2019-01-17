require "rails_helper"

feature "user visits the index page" do
  let!(:name_of_the_wind) { FactoryGirl.create(:book) }
  let!(:the_witcher) { FactoryGirl.create(:book) }
  let!(:the_alchemist) { FactoryGirl.create(:book) }

  scenario "user sees a list of books" do
    visit '/'
    expect(page).to have_content(name_of_the_wind.title)
    expect(page).to have_content(the_witcher.title)
    expect(page).to have_content(the_alchemist.title)
  end
end
