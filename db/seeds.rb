# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(
  full_name: "Stephen Edwin King",
  bio: "Stephen Edwin King is an American author of horror, supernatural fiction, suspense, science fiction, and fantasy. His books have sold more than 350 million copies, many of which have been adapted into feature films, miniseries, television series, and comic books.",
  birth: Date.parse('1947-9-21')
)

Book.create(
  title: "Christine",
  plot: "Christine is a horror novel written by Stephen King, published in 1983. It tells the story of a 1958 Plymouth Fury apparently possessed by supernatural forces.",
  author: Author.last,
  release_date: Date.parse('1983-04-29')
)

Book.create(
  title: "IT",
  plot: "It is a 1986 horror novel by American author Stephen King. It was his 22nd book, and his 18th novel written under his own name. The story follows the experiences of seven children as they are terrorized by an evil entity that exploits the fears and phobias of its victims to disguise itself while hunting its prey. ",
  author: Author.last,
  release_date: Date.parse('1986-09-15')
)

Book.create(
  title: "The Shining",
  plot: "Jack Torrance (Jack Nicholson) becomes winter caretaker at the isolated Overlook Hotel in Colorado, hoping to cure his writer's block. He settles in along with his wife, Wendy (Shelley Duvall), and his son, Danny (Danny Lloyd), who is plagued by psychic premonitions. As Jack's writing goes nowhere and Danny's visions become more disturbing, Jack discovers the hotel's dark secrets and begins to unravel into a homicidal maniac hell-bent on terrorizing his family.",
  author: Author.last,
  release_date: Date.parse('1980-05-23')
)

Book.create(
  title: "Pet Sematary",
  plot: "Doctor Louis Creed (Dale Midkiff) moves his family to Maine, where he meets a friendly local named Jud Crandall (Fred Gwynne). After the Creeds' cat is accidentally killed, Crandall advises Louis to bury it in the ground near the old pet cemetery. The cat returns to life, its personality changed for the worse. When Louis' son, Gage (Miko Hughes), dies tragically, Louis decides to bury the boy's body in the same ground despite the warnings of Crandall and Louis' visions of a deceased patient.",
  author: Author.last,
  release_date: Date.parse('1989-04-21')
)

10.times do
  Author.create(full_name: Faker::Book.author, birth: Faker::Date.birthday(18, 65), bio: Faker::Lorem.paragraph(2))
end

10.times do
  Book.create(
    title: Faker::Book.title,
    release_date: Faker::Date.birthday(1, 65),
    plot: Faker::Lorem.paragraph(2),
    author_id: rand(2..11)
  )
end
