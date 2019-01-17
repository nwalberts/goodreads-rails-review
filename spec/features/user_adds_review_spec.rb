require 'rails_helper'

feature "visitors can add reviews for books" do
  let!(:name_of_the_wind) { FactoryGirl.create(:book) }

  scenario "adds a review successfully" do

    visit book_path(name_of_the_wind)
    click_link 'Add a Review'

    expect(page).to have_content "Review form for #{name_of_the_wind.title}"

    fill_in "Rating", with: 3
    fill_in "Review", with: "This book is hella awesome"
    click_button "Add Review"
    
    expect(page).to have_content name_of_the_wind.title
    expect(page).to have_content 5
    expect(page).to have_content "This book is hella awesome"
  end

  scenario "adds a review unsuccessfully" do
    visit book_path(name_of_the_wind)
    click_link 'Add a Review'
    click_button 'Add Review'

    expect(page).to have_content "Rating can't be blank, Body can't be blank"
  end
end
