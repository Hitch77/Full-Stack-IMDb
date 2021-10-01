# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.delete_all
Movie.delete_all

demoUser = User.create!(email: 'forfrodo@gondor.com', password: 'tomordor')

user1 = User.create!(email: 'user1@gmail.com', password: 'password')
user2 = User.create!(email: 'user2@gmail.com', password: 'password')
user3 = User.create!(email: 'user3@gmail.com', password: 'password')
user4 = User.create!(email: 'user4@gmail.com', password: 'password')
user5 = User.create!(email: 'user5@gmail.com', password: 'password')
user6 = User.create!(email: 'user6@gmail.com', password: 'password')
user7 = User.create!(email: 'user7@gmail.com', password: 'password')



# Movie.create!(title:, year:, description:)
# dune.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/Dune"), filename:'Dune.jpg')


avatar = Movie.create!(title: "Avatar 2", year: 2022, description: "A sequel to Avatar (2009).")
avatar.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/avatar.jpg"), filename:'avatar.jpg')

bobsBurgers = Movie.create!(title:"Bob's Burgers: The Movie", year: 2022, description:"Plot unknown. Feature film based on the animated TV series.")
bobsBurgers.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/bobs-burgers.jpg"), filename:'bobs-burgers.jpg')

bond = Movie.create!(title:"No Time To Die", year: 2021, description:"Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.")
bond.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/bond.jpg"), filename:'bond.jpg')

clifford = Movie.create!(title:"Clifford the Big Red Dog", year: 2021, description:"As middle schooler Emily Elizabeth struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend from a magical animal rescuer. When Clifford becomes a gigantic red dog in her New York City apartment and attracts the attention of a genetics company who wish to supersize animals, Emily and her clueless Uncle Casey have to fight the forces of greed as they go on the run across New York City and take a bite out of the Big Apple. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love. Based on the beloved Scholastic character, Clifford will teach the world how to love big.")
clifford.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/clifford.jpg"), filename:'clifford.jpg')

encanto = Movie.create!(title:"Encanto", year: 2021, description:"A young Colombian girl has to face the frustration of being the only member of her family without magical powers.")
encanto.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/encanto.jpg"), filename:'encanto.jpg')

eternals = Movie.create!(title:"Eternals", year: 2021, description:"Following the events of Avengers: Endgame (2019), an unexpected tragedy forces the Eternals, ancient aliens who have been living on Earth in secret for thousands of years, out of the shadows to reunite against mankind's most ancient enemy, the Deviants.")
eternals.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/eternals.jpg"), filename:'eternals.jpg')

dune = Movie.create!(title: "Dune", year: 2021, description: "A mythic and emotionally charged hero's journey, 'Dune' tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.")
dune.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/Dune"), filename:'Dune.jpg')

ghostbusters = Movie.create!(title:"Ghostbusters: Afterlife", year: 2021, description:"When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.")
ghostbusters.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/ghostbusters.jpg"), filename:'ghostbusters.jpg')

houseOfGucci = Movie.create!(title:"House of Gucci", year: 2021, description:"House of Gucci is inspired by the family empire behind the Italian fashion house of Gucci. Spanning three decades of love, betrayal, decadence, revenge, and ultimately murder, the film reveals what a name means, what it's worth, and how far a family will go for control.")
houseOfGucci.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/house-of-gucci.jpg"), filename:'house-of-gucci.jpg')

jurassicWorld = Movie.create!(title:"Jurassic World: Dominion", year: 2022, description:"Plot kept under wraps.")
jurassicWorld.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/jurassic-world.png"), filename:'jurassic-world.png')

kingRichard = Movie.create!(title:"King Richard", year: 2021, description:"A look at how tennis superstars Venus and Serena Williams became who they are after the coaching from their father Richard Williams.")
kingRichard.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/kingrichard.jpg"), filename:'kingrichard.jpg')

matrix = Movie.create!(title:"The Matrix Resurrections", year: 2021, description:"The plot is currently unknown.")
matrix.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/matrix.jpg"), filename:'matrix.jpg')

sesameStreet = Movie.create!(title:"Sesame Street", year: 2022, description:"Big Bird and his Sesame Street friends are mysteriously expelled from their neighborhood, finding themselves in Manhattan. They team up with a plucky history show host Sally Hawthorne (Anne Hathaway) who's on a quest to save her show and prove that Sesame Street actually exists, with obstacles created by the 'evil' Mayor, with reasons of his own for keeping Sesame Street hidden from the world.")
sesameStreet.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/sesame-street.jpg"), filename:'sesame-street.jpg')

spencer = Movie.create!(title:"Spencer", year: 2021, description:"During her Christmas holidays with the royal family at the Sandringham estate in Norfolk, England, Diana decides to leave her marriage to Prince Charles.")
spencer.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/spencer.jpg"), filename:'spencer.jpg')

spiderman = Movie.create!(title:"Spider-Man: No Way Home", year: 2021, description:"For the first time in the cinematic history of Spider-Man, our friendly neighborhood hero is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.")
spiderman.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/spiderman.jpg"), filename:'spiderman.jpg')

theFrenchDispatch = Movie.create!(title:"The French Dispatch", year: 2021, description:"A love letter to journalists set in an outpost of an American newspaper in a fictional twentieth century French city that brings to life a collection of stories published in 'The French Dispatch Magazine'.")
theFrenchDispatch.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/the-french-dispatch.jpg"), filename:'the-french-dispatch.jpg')

theKingsMan = Movie.create!(title:"The King's Man", year: 2021, description:"In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.")
theKingsMan.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/the-kings-man.jpg"), filename:'the-kings-man.jpg')

the355 = Movie.create!(title:"The 355", year: 2022, description:"When a top-secret weapon falls into mercenary hands, wild card CIA agent Mason 'Mace' Brown will need to join forces with rival badass German agent Marie, former MI6 ally and cutting-edge computer specialist Khadijah, and skilled Colombian psychologist Graciela on a lethal, breakneck mission to retrieve it, while also staying one-step ahead of a mysterious woman, Lin Mi Sheng, who is tracking their every move. As the action rockets around the globe from the cafes of Paris to the markets of Morocco to the wealth and glamour of Shanghai, the quartet of women will forge a tenuous loyalty that could protect the world-or get them killed.")
the355.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/the355.jpg"), filename:'the355.jpg')

topGun = Movie.create!(title:"Top Gun: Maverick", year: 2022, description:"After more than thirty years of service as one of the Navy's top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.")
topGun.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/top-gun.jpg"), filename:'top-gun.jpg')

westSideStory = Movie.create!(title:"West Side Story", year: 2021, description:"An adaptation of the 1957 musical, West Side Story explores forbidden love and the rivalry between the Jets and the Sharks, two teenage street gangs of different ethnic backgrounds.")
westSideStory.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/westsidestory.jpg"), filename:'westsidestory.jpg')
