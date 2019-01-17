# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) movies =

book_1 = Book.create(title: "The Expanse", author: "Atul Gawande", isbn: "5555555555555")
book_2 = Book.create(title: "Crime and Punishment", author: "Richard Blanco", isbn: "5555555555555")
book_3 = Book.create(title: "How to Tame a Unicorn", author: "Ishiguro Kazuo", isbn: "5555555555555")
book_4 = Book.create(title: "Centaur Fancy", author: "Khaled Hosseini", isbn: "5555555555555")
book_5 = Book.create(title: "Wizard of Earthsea", author: "Roxane Gay", isbn: "5555555555555")
book_6 = Book.create(title: "The Witcher", author: "Bryan Stevenson", isbn: "5555555555555")
book_7 = Book.create(title: "Unicorn Abroad: A Love Story about one Unicorn and one Centaur", author: "Claudia Rankine", isbn: "5555555555555")
book_7 = Book.create(title: "Between the World and Me", author: "Ta-Nehisi Coates", isbn: "5555555555555")
book_8 = Book.create(title: "When Breath Becomes Air", author: "Paul Kalanithi", isbn: "5555555555555")
book_9 = Book.create(title: "A Cup of Water Under My Bed", author: "Daisy Hernandez", isbn: "5555555555555")
book_10 = Book.create(title: "An Indigenous Peoples' History of the United States", author: "Roxanne Dunbar-Ortiz", isbn: "5555555555555")

# review_1 = Review.create(rating: 5, body:"Not so much a history of the Indigenous Peoples of North America as much as a re-telling of American history that actually includes their unfortunate role within it, which is way more prominent in ways you haven't imagined.
# This is a succinct, powerful read whose basic premise, the US is a settler-colonial power, screams at you throughout.", book: book_10)
#
# review_2 = Review.create(rating: 4, body: "Found a lot to relate to in this lyrical and poignant collection of stories by Daisy Hernandez. Hernandez weaves multiple narrative strands together: stories of her parents' and their siblings emigration from Colombia and Cuba; of the ravages of colonialism on language, culture, and community; of compromise, negotiation, and syncretism between the faith and culture of the colonizers and the beliefs and traditions slaves brought with them to the Americas and transformed (often by necessity)", book: book_9)
#
# review_3 = Review.create(rating: 5, body:"This book is necessary and timely. It was timely fifty years ago. I pray it is not timely fifty years from now. Rankine takes on the realities of race in America with elegance but also rage/resignation... maybe we call it rageignation.", book: book_7)
#
# review_4 = Review.create(rating: 3, body: "Magical", book: book_3)
#
# review_5 = Review.create(rating: 4, body: "Yasssss", book: book_4)
#
# review_6 = Review.create(rating: 5, body: " Fabulous. Great read. So much I could relate to, but also so much that I'd never thought about. I didn't agree with all of it, but I don't need to agree to grow and learn from an opinion. My only complaint is that it wasn't longer. I wanted more more more. Thumbs up.", book: book_5)
