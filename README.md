# Goodreads Rails for Raj and for Pandas
Starter code for a review clinic to review the basics of Rails and creating a full stack rails application. You should run your tests, and let their assertions guide your development.

Users should be able to:
* View a list of all of the books
* Leave a review on a specific book
* View a show page for a book and its reviews

#### Book

* A book must have a title
* A book must have author
* Can optionally have an ISBN (string)
* A book can have many reviews

#### Reviews

* Must have a rating
* Must have a body

### BONUS
It would be great if you can add new books as well.

## Setup
To get set up, run the following

```no-highlight
  bundle
  rake db:create
  rails s
```

And navigate to `localhost:3000`.

If you want to populate the database with test data, run `rake db:seed` after creating your migrations and models according to the tests.

To run your tests, run:
```no-highlight
  rake db:test:prepare
  rake
```
in a separate terminal tab.
