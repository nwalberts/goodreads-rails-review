require "rails_helper"

feature "user visits a book's show page" do
  let!(:name_of_the_wind) { Book.create(title: "Name of the Wind", author: "Patrick Rothfuss", isbn: "5555555555555") }
  let(:other_book) { FactoryGirl.create(:book) }
  let!(:name_of_the_wind_review) { FactoryGirl.create(:review, book: name_of_the_wind) }
  let!(:other_review) { FactoryGirl.create(:review, book: other_book) }

  scenario "user clicks link to book and sees book details" do
    visit '/'
    click_link 'Name of the Wind'
    expect(page).to have_content(name_of_the_wind.title)
    expect(page).to have_content(name_of_the_wind.author)
    expect(page).to have_content(name_of_the_wind.isbn)
  end

  scenario "user sees all of the reviews that belong to that book" do
    visit '/'
    click_link 'Name of the Wind'
    expect(page).to have_content(name_of_the_wind_review.rating)
    expect(page).to have_content(name_of_the_wind_review.body)
  end

  scenario "user does not see reviews that do not belong to that book" do
    visit '/'
    click_link 'Name of the Wind'
    expect(page).to_not have_content(other_review.body)
  end

  scenario "user sees a link to add a review" do
    visit '/'
    click_link 'Name of the Wind'
    expect(page).to have_link "Add a Review"
  end
end
