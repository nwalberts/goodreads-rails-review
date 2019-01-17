require "rails_helper"

feature "user visits the index page" do
  let!(:book_1) { FactoryGirl.create(:book) }
  let!(:book_2) { FactoryGirl.create(:book) }
  let!(:book_3) { FactoryGirl.create(:book) }
  let!(:book_4) { FactoryGirl.create(:book) }

  scenario "user sees a list of books" do
    visit '/'

    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_2.title)
    expect(page).to have_content(book_3.title)
  end
end
