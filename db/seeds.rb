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
Review.delete_all
Celeb.delete_all

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

jamesCameron = Celeb.create!(name: "James Cameron", bio: "James Cameron is a critically acclaimed film director known for some of the biggest box-office hits of all time. A science-fiction fan as a child, he went on to produce and direct films including The Terminator, Aliens and Avatar. He has received numerous Academy Awards and nominations for his often large-scale, expensive productions. His most noted work, 1997's Titanic, became the first film to earn more than $1 billion and landed 14 Academy Award nominations. Cameron took home three Oscars himself for the project: Best Director, Best Film Editing and Best Picture.", birthdate: "August 16, 1954", birthplace: "Kapuskasing, Ontario, Canada")
jamesCameron.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/jamesCameron.jpg"), filename:'jamesCameron.jpg')
kateWinslet = Celeb.create!(name: "Kate Winslet", bio: "Kate Winslet started acting at age 7. She starred on the British stage until the mid-1990s, when she appeared in her first film, Heavenly Creatures. In 1997 she had the lead role in Titanic, which propelled her to international stardom. She has since starred in several films and won the best actress Oscar for The Reader. She has also received several Golden Globes, including wins for Revolutionary Road, Mildred Pierce and Steve Jobs.", birthdate: "October 5, 1975" , birthplace: "Reading, Berkshire, England, UK")
kateWinslet.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/kateWinslet.jpg"), filename:'kateWinslet.jpg')


lorenBouchard = Celeb.create!(name: "Loren Bouchard", bio: "Loren Bouchard was born in 1970 in the USA as Loren Hal Bouchard. He is a writer and producer, known for Bob's Burgers (2011), Central Park (2020) and Lucy: The Daughter of the Devil (2005). He has been married to Holly Kretschmar since September 3, 2006.", birthdate: "1970" , birthplace: "USA")
lorenBouchard.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/lorenBouchard.jpg"), filename:'lorenBouchard.jpg')
hJonBenjamin = Celeb.create!(name: "H. Jon Benjamin", bio: "H. Jon Benjamin was born on May 23, 1966 in Worcester, Massachusetts, USA. He is an actor and writer, known for Archer (2009), Wet Hot American Summer (2001) and Not Another Teen Movie (2001).", birthdate: "May 23, 1966", birthplace: "Worcester, Massachusetts, USA")
hJonBenjamin.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/hJonBenjamin.jpg"), filename:'hJonBenjamin.jpg')


caryJojiFukunaga = Celeb.create!(name: "Cary Joji Fukunaga", bio: "Cary Joji Fukunaga was born on July 10, 1977 in Oakland, California, USA. He is a producer and director, known for Beasts of No Nation (2015), Sin Nombre (2009) and No Time to Die (2021).", birthdate: "July 10, 1977", birthplace: "Oakland, California, USA")
caryJojiFukunaga.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/caryJojiFukunaga.jpg"), filename:'caryJojiFukunaga.jpg')
nealPurvis = Celeb.create!(name: "Neal Purvis", bio: "Neal Purvis was born on September 9, 1961. He is a writer and producer, known for Skyfall (2012), Casino Royale (2006) and No Time to Die (2021).", birthdate: "September 9, 1961", birthplace: "UK")
nealPurvis.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/nealPurvis.jpg"), filename:'nealPurvis.jpg')
danielCraig = Celeb.create!(name: "Daniel Craig", bio: "Born in 1968 in Chester, England, Daniel Craig moved to London when he was 16 to join the National Youth Theatre. Following his big screen debut in The Power of One, the actor featured in the BAFTA-winning BBC miniseries Our Friends in the North and went on to roles in films like Lara Croft: Tomb Raider and Road to Perdition. Craig also worked with director Steven Spielberg on Munich and in 2006 was seen as James Bond in Casino Royale, reinvigorating the franchise. He returned as Bond for the blockbusters Quantum of Solace, Skyfall and Spectre, while starring in other major features like The Girl with the Dragon Tattoo and Logan Lucky.", birthdate: "March 2, 1968", birthplace: "Chester, Cheshire, England, UK")
danielCraig.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/danielCraig.jpg"), filename:'danielCraig.jpg')

waltBecker = Celeb.create!(name: "Walt Becker", bio: "Walt Becker was born on September 16, 1968 in Hollywood, California, USA as Walt William Becker. He is a director and producer, known for Old Dogs (2009), Wild Hogs (2007) and Van Wilder (2002). He has been married to Lindsay Becker since 2005. They have two children.", birthdate: "September 16, 1968", birthplace: "Hollywood, California, USA")
waltBecker.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/waltBecker.jpg"), filename:'waltBecker.jpg')
jayScherick = Celeb.create!(name: "Jay Scherick", bio: "Jay Scherick also known as Jay is the son of Edgar Scherick is a screenwriter, television producer. He has written screenplay for the films, “The Smurfs 2, The Smurfs, The Zookeeper, Norbit, and Guess Who”. His TV shows are, “Caroline in the City, Madigan Men, Mr. Rhodes, Spin City”. He was nominated for Golden Raspberry Award for Worst Screenplay for Norbit in the year 2007.", birthdate: "Unknown", birthplace: "Unknown")
jayScherick.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/jayScherick.jpg"), filename:'jayScherick.jpg')
darbyCamp = Celeb.create!(name: "Darby Camp", bio: "Darby Camp began acting as a toddler alongside her mother and older sister. Together they were seen in local commercials and print ads in their hometown of Charlotte, NC. By the time Darby was eight years old it was evident her gift for acting was best served in film and television. She spent two seasons as the sassy Chloe McKenzie in the Emmy-winning HBO series, Big Little Lies (2017). You can watch her now on Netflix alongside Kurt Russell in The Christmas Chronicles (2018) and The Christmas Chronicles: Part Two (2020). Her latest project is Paramount's Clifford the Big Red Dog (2021) where she stars as Emily Elizabeth. When Darby isn't acting, she's most likely enjoying the slow pace of southern living with her family, friends and beloved pets.", birthdate: "July 14, 2007", birthplace: "Charlotte, North Carolina, USA")
darbyCamp.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/darbyCamp.jpg"), filename:'darbyCamp.jpg')

jaredBush = Celeb.create!(name: "Jared Bush", bio: "Jared Bush was born on June 12, 1974 in Gaithersburg, Maryland, USA as Jared Earl Bush. He is known for his work on Zootopia (2016), Moana (2016) and What Lies Beneath (2000). He is married to Pamela McDonald. They have three children.", birthdate: "June 12, 1974", birthplace: "Gaithersburg, Maryland, USA")
jaredBush.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/jaredBush.jpg"), filename:'jaredBush.jpg')
dianeGuerrero = Celeb.create!(name: "Diane Guerrero", bio: "Diane Guerrero is an American actress and author. She is known for her roles as inmate Maritza Ramos on the Netflix series Orange Is the New Black and Lina on Jane the Virgin. Guerrero grew up in Boston and remained there after the rest of her family were deported to Colombia.", birthdate: "July 21, 1986", birthplace: "Passaic, New Jersey, USA")
dianeGuerrero.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/dianeGuerrero.jpg"), filename:'dianeGuerrero.jpg')

chloéZhao = Celeb.create!(name: "Chloé Zhao", bio: "Chloé Zhao, born Zhao Ting is a Chinese-born filmmaker, known primarily for her work on independent films. Zhao's debut feature film, Songs My Brothers Taught Me, premiered at Sundance Film Festival to critical acclaim and earned a nomination for the Independent Spirit Award for Best First Feature.", birthdate: "March 31, 1982", birthplace: "Beijing, China")
chloéZhao.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/chloeZhao.jpg"), filename:'chloeZhao.jpg')
gemmaChan = Celeb.create!(name: "Gemma Chan", bio: "Gemma Chan is an English actress and model. Born and raised in London, Chan attended the Newstead Wood School for Girls and studied law at Worcester College, Oxford before choosing to pursue a career in acting instead, enrolling at the Drama Centre London.", birthdate: "November 29, 1982", birthplace: "London, United Kingdom")
gemmaChan.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/gemmaChan.jpg"), filename:'gemmaChan.jpg')

denisVilleneuve = Celeb.create!(name: "Denis Villeneuve", bio: "Denis Villeneuve OC CQ is a Canadian film director, producer, and screenwriter. He is a four-time recipient of the Canadian Screen Award for Best Direction, for Maelström in 2001, Polytechnique in 2009, Incendies in 2010 and Enemy in 2013.", birthdate: "October 3, 1967", birthplace: "Trois-Rivières, Canada")
denisVilleneuve.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/denisVilleneuve.jpg"), filename:'denisVilleneuve.jpg')
timothéeChalamet = Celeb.create!(name: "Timothée Chalamet", bio: "Timothée Hal Chalamet is an American actor. He has received several accolades throughout his career, including nominations for an Academy Award, three BAFTA Film Awards, two Golden Globe Awards, four Screen Actors Guild Awards, and four Critics' Choice Movie Awards.", birthdate: "December 27, 1995", birthplace: "Manhattan, New York, NY")
timothéeChalamet.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/timotheeChalamet.jpg"), filename:'timotheeChalamet.jpg')

jasonReitman = Celeb.create!(name: "Jason Reitman", bio: "Jason Reitman was born on October 19, 1977 in Montreal, Quebec, Canada. He is a producer and director, known for Up in the Air (2009), Thank You for Smoking (2005) and Juno (2007). He was previously married to Michele Lee.", birthdate: "October 19, 1977", birthplace: "Montreal, Quebec, Canada")
jasonReitman.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/jasonReitman.jpg"), filename:'jasonReitman.jpg')
finnWolfhard = Celeb.create!(name: "Finn Wolfhard", bio: "Finn Wolfhard is a Canadian actor, musician, screenwriter, and director. His acting roles include Mike Wheeler in the Netflix series Stranger Things, for which he has won Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Drama Series out of three nominations.", birthdate: "December 23, 2002", birthplace: "Vancouver, Canada")
finnWolfhard.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/finnWolfhard.jpg"), filename:'finnWolfhard.jpg')

ridleyScott = Celeb.create!(name: "Ridley Scott", bio: "Sir Ridley Scott is an English film director and producer. He has directed the science fiction horror film Alien, the neo-noir dystopian film Blade Runner, the road adventure film Thelma & Louise, the historical drama film Gladiator, the war film Black Hawk Down, and the science fiction film The Martian.", birthdate: "November 30, 1937", birthplace: "South Shields, United Kingdom")
ridleyScott.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/ridleyScott.jpg"), filename:'ridleyScott.jpg')
robertoBentivegna = Celeb.create!(name: "Roberto Bentivegna", bio: "Roberto Bentivegna was born in London of Italian parents. He grew up in Milan and London, attending Emerson College in Boston before pursuing an MFA at Columbia University. His short films have screened at international film festivals including Locarno, Atlanta, and Miami, and are distributed by Film Movement and Shorts International. Whilst at Columbia University, Roberto was awarded the Carla Kuhn fellowship, the Hollywood Foreign Press Award, the Alfred P. Sloan Screenwriting award and the Faculty Selects for 'A Day in March'. He was a finalist in the Academy's Nicholl Fellowship.", birthdate: "June 9, 1982", birthplace: "London, England, UK")
robertoBentivegna.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/robertoBentivegna.jpg"), filename:'robertoBentivegna.jpg')
adamDriver = Celeb.create!(name: "Adam Driver", bio: "Adam Douglas Driver is an American actor. He is the recipient of several accolades, including the Venice Film Festival Volpi Cup for Best Actor, as well as nominations for a Tony Award, two Academy Awards, two Golden Globe Awards, and four Primetime Emmy Awards.", birthdate: "November 19, 1983", birthplace: "San Diego, CA")
adamDriver.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/adamDriver.jpg"), filename:'adamDriver.jpg')

colinTrevorrow = Celeb.create!(name: "Colin Trevorrow", bio: "Colin T. Trevorrow is an American film director, screenwriter, and film producer. He made his feature directorial debut with the science fiction comedy Safety Not Guaranteed to critical and commercial success.", birthdate: "September 13, 1976", birthplace: "San Francisco, CA")
colinTrevorrow.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/colinTrevorrow.jpg"), filename:'colinTrevorrow.jpg')
chrisPratt = Celeb.create!(name: "Chris Pratt", bio: "Chris Pratt was discovered by actress/director Rae Dawn Chong and eventually established a successful TV career, starring in series like Everwood, The O.C. and Parks and Recreation. He ventured onto the big screen as well, nabbing supporting roles in Wanted, Moneyball and Zero Dark Thirty, before enjoying success as the lead actor in the Guardians of the Galaxy and Jurassic World franchises.", birthdate: "June 21, 1979", birthplace: "Virginia, Minnesota")
chrisPratt.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/chrisPratt.jpg"), filename:'chrisPratt.jpg')

reinaldoMarcusGreen = Celeb.create!(name: "Reinaldo Marcus Green", bio: "Reinaldo Marcus Green is an American director, producer and writer, best known for his 2018 film, Monsters and Men, which won the Special Jury Award for Outstanding First Feature at the Sundance Film Festival.", birthdate: "Unknown", birthplace: "New York, NY")
reinaldoMarcusGreen.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/reinaldoMarcusGreen.jpg"), filename:'reinaldoMarcusGreen.jpg')
zachBaylin = Celeb.create!(name: "Zach Baylin", bio: "Zach Baylin was born in 1980 in the USA as Zachary Jones Baylin. He is known for his work on Side Effects (2013), King Richard (2021) and Untitled Studio 8/Francesco Munzi Crime Thriller Project. He has been married to Katherine Temma Susman since April 17, 2010.", birthdate: "1980", birthplace: "USA")
zachBaylin.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/zachBaylin.jpg"), filename:'zachBaylin.jpg')
willSmith = Celeb.create!(name: "Will Smith", bio: "After Will Smith met Jeff Townes at age 16, the duo launched a highly successful rap career as DJ Jazzy Jeff & The Fresh Prince. Smith starred on the sitcom The Fresh Prince of Bel-Air for six seasons, before establishing himself as a Hollywood A-lister with Bad Boys (1995) and Independence Day (1996). He has since headlined such popular films as Men in Black (1997) and Hitch (2005) and earned Oscar nominations for Ali (2001) and The Pursuit of Happyness (2006). Smith also earned acclaim for Concussion (2015), before returning to action fare with Suicide Squad (2016).", birthdate: "September 25, 1968", birthplace: "Philadelphia, Pennsylvania")
willSmith.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/willSmith.jpg"), filename:'willSmith.jpg')

lanaWachowski = Celeb.create!(name: "Lana Wachowski", bio: "Lana Wachowski and her sister Lilly Wachowski, also known as the Wachowskis, are the duo behind such ground-breaking movies as The Matrix (1999) and Cloud Atlas (2012). Born to mother Lynne, a nurse, and father Ron, a businessman of Polish descent, Wachowski grew up in Chicago and formed a tight creative relationship with her sister Lilly. After the siblings dropped out of college, they started a construction business and wrote screenplays. Their 1995 script, Assassins (1995), was made into a movie, leading to a Warner Bros contract. After that time, the Wachowskis devoted themselves to their movie careers. In 2012, during interviews for Cloud Atlas and in her acceptance speech for the Human Rights Campaign's Visibility Award, Lana spoke about her experience of being a transgender woman, sacrificing her much cherished anonymity out of a sense of responsibility. Lana is known to be extremely well-read, loves comic books and exploring ideas of imaginary worlds, and was inspired by Stanley Kubrick's 2001: A Space Odyssey (1968) in creating Cloud Atlas.", birthdate: "June 21, 1965", birthplace: "Chicago, Illinois, USA")
lanaWachowski.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/lanaWachowski.jpg"), filename:'lanaWachowski.jpg')
keanuReeves = Celeb.create!(name: "Keanu Reeves", bio: "Keanu Reeves was born on September 2, 1964, in Beirut, Lebanon, and was raised in Toronto, Canada. He first gained attention for his performance in River's Edge, while the comedy Bill & Ted's Excellent Adventure and its sequel, Bill & Ted's Bogus Journey, brought him major recognition. Reeves has developed an eclectic film roster that includes the action flick Speed and the sci-fi blockbusters The Matrix and its sequels, as well as more art-house fare like My Own Private Idaho and The Private Lives of Pippa Lee. Reeves made his directorial debut in 2013 with Man of Tai Chi.", birthdate: "September 2, 1964", birthplace: "Beirut, Lebanon")
keanuReeves.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/keanuReeves.jpg"), filename:'keanuReeves.jpg')

jonathanKrisel = Celeb.create!(name: "Jonathan Krisel", bio: "Jonathan Krisel is an American director, producer, writer, editor, and occasional actor. He is best known for his work with the comedy duo Tim & Eric, having directed episodes of Tim and Eric Awesome Show, Great Job! and Check It Out! with Dr. Steve Brule.", birthdate: "January 4, 1979", birthplace: "United States")
jonathanKrisel.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/jonathanKrisel.jpg"), filename:'jonathanKrisel.jpg')
anneHathaway = Celeb.create!(name: "Anne Hathaway", bio: "Actress Anne Hathaway got her first big break in 1999 on the short-lived television series Get Real. Hathaway then landed the role that made her famous, playing Mia Thermopolis in The Princess Diaries (2001). In 2006 she found huge success with The Devil Wears Prada and the following year she starred in Becoming Jane, a film about Jane Austen. Hathaway then garnered both critical and commercial attention for her role in 2010's Love and Other Drugs. She went on to win acclaim for later film appearances, including those in The Dark Knight Rises, Les Miserables (both released in 2012) and Alice Through the Looking Glass (2016), before being tapped for the heist comedy Ocean's 8 (2018).", birthdate: "November 12, 1982", birthplace: "Brooklyn, New York")
anneHathaway.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/anneHathaway.jpg"), filename:'anneHathaway.jpg')

pabloLarraín = Celeb.create!(name: "Pablo Larraín", bio: "Pablo Larraín was born on August 19, 1976 in Santiago, Chile as Pablo Larraín Matte. He is a producer and writer, known for The Club (2015), Jackie (2016) and No (2012). He has been married to Antonia Zegers since December 9, 2006. They have two children.", birthdate: "August 19, 1976", birthplace: "Santiago, Chile")
pabloLarraín.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/pabloLarrain.jpg"), filename:'pabloLarrain.jpg')
stevenKnight = Celeb.create!(name: "Steven Knight", bio: "Steven Knight is a British screenwriter and film director. He is best known for screenplays he wrote for the films Dirty Pretty Things (2002) and Eastern Promises (2007), and also directed as well as written the film Locke (2013) Knight is also one of three creators of Who Wants to Be a Millionaire?, a game show that has been remade and aired in around 160 countries worldwide, and has written for BBC's Commercial Breakdown, The Detectives , Peaky Blinders and Taboo. Others films based on screenplays that Knight has written include The Hundred-Foot Journey and Pawn Sacrifice both in 2014.", birthdate: "1959", birthplace: "Marlborough, England, UK")
stevenKnight.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/stevenKnight.jpg"), filename:'stevenKnight.jpg')
kristenStewart = Celeb.create!(name: "Kristen Stewart", bio: "Kristen Stewart found work as a child actress before co-starring in the well-regarded Panic Room. She became a teen icon with the role of Bella Swan in the Twilight films, her success carrying over to features like Snow White and the Huntsman. Stewart went on to star in Still Alice and Café Society, before signing up for a reboot of Charlie's Angels.", birthdate: "April 9, 1990", birthplace: "Los Angeles, California")
kristenStewart.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/kristenStewart.jpg"), filename:'kristenStewart.jpg')

jonWatts = Celeb.create!(name: "Jon Watts", bio: "Jon Watts is an American film director, producer, and screenwriter. His credits include directing the Marvel Cinematic Universe superhero films Spider-Man: Homecoming and Spider-Man: Far From Home, and the upcoming Spider-Man: No Way Home; he has also signed to direct the MCU's Fantastic Four.", birthdate: "June 28, 1981", birthplace: "Fountain, Colorado, USA")
jonWatts.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/jonWatts.jpg"), filename:'jonWatts.jpg')
chrisMckenna = Celeb.create!(name: "Chris McKenna", bio: "Chris L. McKenna began his acting career at the tender age of 7 when he picked up a school flier announcing auditions for Snow White and the Seven Dwarfs. He got permission from his parents to audition and found himself cast as Dopey. He's been hooked ever since. After making small appearances in independent films, McKenna made the transition to television at the age of 12, on the daytime series, One Life to Live (1968). While on this show, he had the distinction of portraying Joey Buchanan, the best friend to daytime drama's first gay teen, played by Ryan Phillippe.", birthdate: "October 18, 1977", birthplace: "Queens, New York, USA")
chrisMckenna.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/chrisMckenna.jpg"), filename:'chrisMckenna.jpg')
zendaya = Celeb.create!(name: "Zendaya", bio: "Zendaya started acting as a child, appearing in productions at the California Shakespeare Theater and other theatrical companies near her hometown of Oakland, California. She landed her first television gig in 2010 on the popular tween comedy series Shake It Up and released her self-titled debut album in 2013. After another Disney series, K.C. Undercover, Zendaya transitioned to film with Spider-Man: Homecoming and The Greatest Showman in 2017, before putting her wholesome image behind her with the drama Euphoria.", birthdate: "September 1, 1996", birthplace: "Oakland, California")
zendaya.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/zendaya.jpg"), filename:'zendaya.jpg')

wesAnderson = Celeb.create!(name: "Wes Anderson", bio: "Wes Anderson is an American film director whose works feature a recurring ensemble of actors, including Luke Wilson, Owen Wilson, Bill Murray and Jason Schwartzman. He is known for quirky, comical movies with flawed characters, with projects ranging from The Royal Tenenbaums and The Life Aquatic With Steve Zissou to Moonrise Kingdom and The Grand Budapest Hotel. Anderson has also enjoyed success with the stop-motion animated films Fantastic Mr. Fox and Isle of Dogs.", birthdate: "May 1, 1969", birthplace: "Houston, Texas")
wesAnderson.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/wesAnderson.jpg"), filename:'wesAnderson.jpg')
léaSeydoux = Celeb.create!(name: "Léa Seydoux", bio: "Léa Hélène Seydoux-Fornier de Clausonne is a French actress. She began her acting career in French cinema, appearing in films such as The Last Mistress and On War. She first came to attention after she received her first César Award nomination, for her performance in The Beautiful Person, and won the Trophée Chopard.", birthdate: "July 1, 1985", birthplace: "Passy, Paris, France")
léaSeydoux.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/leaSeydoux.jpg"), filename:'leaSeydoux.jpg')

matthewVaughn = Celeb.create!(name: "Matthew Vaughn", bio: "Matthew Vaughn (born 7 March 1971 in London, England) is an English film producer and director known for producing such films as Lock, Stock and Two Smoking Barrels (1998) and Snatch (2000) and directing the films Layer Cake (2004), Stardust (2007) and Kick-Ass (2010). His latest film is the 2011 superhero film X-Men: First Class.", birthdate: "March 7, 1971", birthplace: "London, United Kingdom")
matthewVaughn.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/matthewVaughn.jpg"), filename:'matthewVaughn.jpg')
ralphFiennes = Celeb.create!(name: "Ralph Fiennes", bio: "British actor Ralph Fiennes is known for his stage and film career. He earned Academy Award nominations for his performances in Schindler's List (1993) and The English Patient (1996). Other films that have gained Fiennes fame include The Reader (2008), the 2012 James Bond film Skyfall and the Harry Potter franchise, in which he played the role of Lord Voldemort.", birthdate: "December 22, 1962", birthplace: "Ipswich, United Kingdom")
ralphFiennes.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/ralphFiennes.jpg"), filename:'ralphFiennes.jpg')

simonKinberg = Celeb.create!(name: "Simon Kinberg", bio: "Kinberg is one of entertainment’s most successful writer-producers, making his name in Fox’s X-Men films, starting by penning “The Last Stand” and producing (and sometimes writing) subsequent outings, along with successful spinoffs “Deadpool,” “Logan” and 2019’s “The New Mutants.” He has “Star Wars” on his plate as well, as being a creator of the “Rebels” series and a producer / co-writer of an in-development Boba Fett feature with “Logan” helmer James Mangold. In addition to producing standalones like “The Martian,” which scored seven Oscar nods, and ABC’s “Designated Survivor,” he’ll add directing to his portfolio with 2019’s “X-Men: Dark Phoenix,” which he is also writing and producing, and the starry distaff spy film “355” with Jessica Chastain and Lupita Nyong’o.", birthdate: "August 2, 1973", birthplace: "London, United Kingdom")
simonKinberg.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/simonKinberg.jpg"), filename:'simonKinberg.jpg')
lupitaNyongo = Celeb.create!(name: "Lupita Nyong'o", bio: "Lupita Nyong'o started acting as a teen in Kenya and went on to work behind the scenes of the film The Constant Gardener. She directed and produced the albinism documentary In My Genes and starred in the TV series Shuga. Nyong'o went on to earn acclaim for her role as Patsey in 12 Years a Slave (2013), for which she won the 2014 Academy Award for Best Supporting Actress. The following year, she starred in Star Wars: The Force Awakens and the Off-Broadway play Eclipsed. The actress also featured prominently in the box office-shattering superhero flick Black Panther (2018). ", birthdate: "March 1, 1983", birthplace: "Mexico City, Distrito Federal, Mexico")
lupitaNyongo.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/lupitaNyongo.jpg"), filename:'lupitaNyongo.jpg')

josephKosinski = Celeb.create!(name: "Joseph Kosinski", bio: "Joseph Kosinski is an American film director best known for his computer graphics and computer-generated imagery work, and for his work in action films. He made his big-screen directorial debut with the 2010 science fiction film Tron: Legacy, the sequel to the 1982 film Tron.", birthdate: "May 3, 1974", birthplace: "Marshalltown, IA")
josephKosinski.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/josephKasinski.jpg"), filename:'josephKasinski.jpg')
christopherMcQuarrie = Celeb.create!(name: "Christopher McQuarrie", bio: "Christopher McQuarrie is an American screenwriter, film director and producer. He received the BAFTA Award, Independent Spirit Award, and Academy Award for Best Original Screenplay for the neo-noir mystery film The Usual Suspects. He made his directorial debut with the crime thriller film The Way of the Gun.", birthdate: "June 12, 1968", birthplace: "Princeton, NJ")
christopherMcQuarrie.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/christopherMcquarrie.jpg"), filename:'christopherMcquarrie.jpg')
tomCruise = Celeb.create!(name: "Tom Cruise", bio: "Tom Cruise is an American actor known for his roles in iconic films throughout the 1980s, 1990s and 2000s, as well as his high profile marriages to actresses Nicole Kidman and Katie Holmes. After developing an interest in acting during high school, he rocketed to fame with his star turns in Risky Business and Top Gun. Cruise later earned acclaim for his work in the hit film Jerry Maguire and the Mission: Impossible franchise.", birthdate: "July 3, 1962", birthplace: "Syracuse, New York, USA")
tomCruise.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/tomCruise.jpg"), filename:'tomCruise.jpg')

stevenSpielberg = Celeb.create!(name: "Steven Spielberg", bio: "Steven Spielberg was an amateur filmmaker as a child. He went on to become the enormously successful and Academy Award-winning director of such films as Schindler's List, The Color Purple, E.T.: The Extra-Terrestrial, Saving Private Ryan, Catch Me If You Can, Lincoln and Bridge of Spies. In 1994, he co-founded the studio Dreamworks SKG, which was purchased by Paramount Pictures in 2005.", birthdate: "December 18, 1946", birthplace: "Cincinnati, Ohio")
stevenSpielberg.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/stevenSpielberg.jpg"), filename:'stevenSpielberg.jpg')
tonyKushner = Celeb.create!(name: "Tony Krushner", bio: "Anthony Robert Kushner is an American playwright, author, and screenwriter. He received the Pulitzer Prize for Drama in 1993 for his play Angels in America, then adapted it into a 2003 miniseries.", birthdate: "July 16, 1956", birthplace: "Manhattan, New York, NY")
tonyKushner.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/tonyKushner.jpg"), filename:'tonyKushner.jpg')
anselElgort = Celeb.create!(name: "Ansel Elgort", bio: "Ansel Elgort is one of the most famous American actors. Ansel Elgort has appeared in more than 15 film and tv shows. He began his acting career in films Carrie in 2013. His famous roles “Edgar Wright’s” action film “Baby Driver“. He has worked in many big Hollywood films like – Divergent (2014), The Fault in Our Stars (2014), Men, Women & Children (2014), The Divergent Series: Insurgent (2015), Paper Towns (2015), The Divergent Series: Allegiant (2016), Baby Driver (2017), November Criminals (2017), Jonathan (2018), Billionaire Boys Club (2018), The Goldfinch (2019).", birthdate: "March 14, 1994", birthplace: "Manhattan, New York, NY")
anselElgort.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/celebs/anselElgort.jpg"), filename:'anselElgort.jpg')


avatar = Movie.create!(title: "Avatar 2", year: 2022, description: "A sequel to Avatar (2009).", writer_id: jamesCameron.id, director_id: jamesCameron.id, actor_id: kateWinslet.id)
avatar.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/avatar.jpg"), filename:'avatar.jpg')

bobsBurgers = Movie.create!(title:"Bob's Burgers: The Movie", year: 2022, description:"Plot unknown. Feature film based on the animated TV series.", writer_id: lorenBouchard.id, director_id: lorenBouchard.id, actor_id: hJonBenjamin.id)
bobsBurgers.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/bobs-burgers.jpg"), filename:'bobs-burgers.jpg')

bond = Movie.create!(title:"No Time To Die", year: 2021, film_rating: "  •  "+"PG-13"+"  •  ", duration: "2h 43min", description:"Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.", writer_id: nealPurvis.id, director_id: caryJojiFukunaga.id, actor_id: danielCraig.id)
bond.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/bond.jpg"), filename:'bond.jpg')

clifford = Movie.create!(title:"Clifford the Big Red Dog", year: 2021, film_rating: "  •  "+"PG"+"  •  ", duration: "1h 37min", description:"As middle schooler Emily Elizabeth struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend from a magical animal rescuer. When Clifford becomes a gigantic red dog in her New York City apartment and attracts the attention of a genetics company who wish to supersize animals, Emily and her clueless Uncle Casey have to fight the forces of greed as they go on the run across New York City and take a bite out of the Big Apple. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love. Based on the beloved Scholastic character, Clifford will teach the world how to love big.", writer_id: jayScherick.id, director_id: waltBecker.id, actor_id: darbyCamp.id)
clifford.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/clifford.jpg"), filename:'clifford.jpg')

encanto = Movie.create!(title:"Encanto", year: 2021, film_rating: "  •  "+"PG", writer_id: jaredBush.id, director_id: jaredBush.id, actor_id: dianeGuerrero.id, description:"A young Colombian girl has to face the frustration of being the only member of her family without magical powers.")
encanto.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/encanto.jpg"), filename:'encanto.jpg')

eternals = Movie.create!(title:"Eternals", year: 2021, film_rating: "  •  "+"PG-13", writer_id: chloéZhao.id, director_id: chloéZhao.id, actor_id: gemmaChan.id, description:"Following the events of Avengers: Endgame (2019), an unexpected tragedy forces the Eternals, ancient aliens who have been living on Earth in secret for thousands of years, out of the shadows to reunite against mankind's most ancient enemy, the Deviants.")
eternals.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/eternals.jpg"), filename:'eternals.jpg')

dune = Movie.create!(title: "Dune", year: 2021, film_rating: "  •  "+"PG-13"+"  •  ", duration: "2h 35min", writer_id: denisVilleneuve.id, director_id: denisVilleneuve.id, actor_id: timothéeChalamet.id, description: "A mythic and emotionally charged hero's journey, 'Dune' tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.")
dune.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/Dune"), filename:'Dune.jpg')

ghostbusters = Movie.create!(title:"Ghostbusters: Afterlife", year: 2021, film_rating: "  •  "+"PG-13", writer_id: jasonReitman.id, director_id: jasonReitman.id, actor_id: finnWolfhard.id, description:"When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.")
ghostbusters.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/ghostbusters.jpg"), filename:'ghostbusters.jpg')

houseOfGucci = Movie.create!(title:"House of Gucci", year: 2021, film_rating: "  •  "+"R", writer_id: robertoBentivegna.id, director_id: ridleyScott.id, actor_id: adamDriver.id, description:"House of Gucci is inspired by the family empire behind the Italian fashion house of Gucci. Spanning three decades of love, betrayal, decadence, revenge, and ultimately murder, the film reveals what a name means, what it's worth, and how far a family will go for control.")
houseOfGucci.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/house-of-gucci.jpg"), filename:'house-of-gucci.jpg')

jurassicWorld = Movie.create!(title:"Jurassic World: Dominion", year: 2022, writer_id: colinTrevorrow.id, director_id: colinTrevorrow.id, actor_id: chrisPratt.id, description:"Plot kept under wraps.")
jurassicWorld.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/jurassic-world.png"), filename:'jurassic-world.png')

kingRichard = Movie.create!(title:"King Richard", year: 2021, film_rating: "  •  "+"PG-13"+"  •  ", duration: "2h 18min", writer_id: zachBaylin.id, director_id: reinaldoMarcusGreen.id, actor_id: willSmith.id, description:"A look at how tennis superstars Venus and Serena Williams became who they are after the coaching from their father Richard Williams.")
kingRichard.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/kingrichard.jpg"), filename:'kingrichard.jpg')

matrix = Movie.create!(title:"The Matrix Resurrections", year: 2021, writer_id: lanaWachowski.id, director_id: lanaWachowski.id, actor_id: keanuReeves.id, description:"The plot is currently unknown.")
matrix.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/matrix.jpg"), filename:'matrix.jpg')

sesameStreet = Movie.create!(title:"Sesame Street", year: 2022, writer_id: jonathanKrisel.id, director_id: jonathanKrisel.id, actor_id: anneHathaway.id, description:"Big Bird and his Sesame Street friends are mysteriously expelled from their neighborhood, finding themselves in Manhattan. They team up with a plucky history show host Sally Hawthorne (Anne Hathaway) who's on a quest to save her show and prove that Sesame Street actually exists, with obstacles created by the 'evil' Mayor, with reasons of his own for keeping Sesame Street hidden from the world.")
sesameStreet.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/sesame-street.jpg"), filename:'sesame-street.jpg')

spencer = Movie.create!(title:"Spencer", year: 2021, film_rating: "  •  "+"R"+"  •  ", duration: "1h 51min", writer_id: stevenKnight.id, director_id: pabloLarraín.id, actor_id: kristenStewart.id, description:"During her Christmas holidays with the royal family at the Sandringham estate in Norfolk, England, Diana decides to leave her marriage to Prince Charles.")
spencer.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/spencer.jpg"), filename:'spencer.jpg')

spiderman = Movie.create!(title:"Spider-Man: No Way Home", year: 2021, writer_id: chrisMckenna.id, director_id: jonWatts.id, actor_id: zendaya.id, description:"For the first time in the cinematic history of Spider-Man, our friendly neighborhood hero is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.")
spiderman.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/spiderman.jpg"), filename:'spiderman.jpg')

theFrenchDispatch = Movie.create!(title:"The French Dispatch", year: 2021, film_rating: "  •  "+"R"+"  •  ", duration: "1h 48min", writer_id: wesAnderson.id, director_id: wesAnderson.id, actor_id: léaSeydoux.id, description:"A love letter to journalists set in an outpost of an American newspaper in a fictional twentieth century French city that brings to life a collection of stories published in 'The French Dispatch Magazine'.")
theFrenchDispatch.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/the-french-dispatch.jpg"), filename:'the-french-dispatch.jpg')

theKingsMan = Movie.create!(title:"The King's Man", year: 2021, film_rating: "  •  "+"R", writer_id: matthewVaughn.id, director_id: matthewVaughn.id, actor_id: ralphFiennes.id, description:"In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.")
theKingsMan.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/the-kings-man.jpg"), filename:'the-kings-man.jpg')

the355 = Movie.create!(title:"The 355", year: 2022, film_rating: "  •  "+"PG-13", writer_id: simonKinberg.id, director_id: simonKinberg.id, actor_id: lupitaNyongo.id, description:"When a top-secret weapon falls into mercenary hands, wild card CIA agent Mason 'Mace' Brown will need to join forces with rival badass German agent Marie, former MI6 ally and cutting-edge computer specialist Khadijah, and skilled Colombian psychologist Graciela on a lethal, breakneck mission to retrieve it, while also staying one-step ahead of a mysterious woman, Lin Mi Sheng, who is tracking their every move. As the action rockets around the globe from the cafes of Paris to the markets of Morocco to the wealth and glamour of Shanghai, the quartet of women will forge a tenuous loyalty that could protect the world-or get them killed.")
the355.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/the355.jpg"), filename:'the355.jpg')

topGun = Movie.create!(title:"Top Gun: Maverick", year: 2022, film_rating: "  •  "+"PG-13", writer_id: christopherMcQuarrie.id, director_id: josephKosinski.id, actor_id: tomCruise.id, description:"After more than thirty years of service as one of the Navy's top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.")
topGun.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/top-gun.jpg"), filename:'top-gun.jpg')

westSideStory = Movie.create!(title:"West Side Story", year: 2021, film_rating: "  •  "+"PG-13", writer_id: tonyKushner.id, director_id: stevenSpielberg.id, actor_id: anselElgort.id, description:"An adaptation of the 1957 musical, West Side Story explores forbidden love and the rivalry between the Jets and the Sharks, two teenage street gangs of different ethnic backgrounds.")
westSideStory.photo.attach(io: open("https://eyemdbee-dev.s3.us-east-2.amazonaws.com/movies/westsidestory.jpg"), filename:'westsidestory.jpg')

# celeb = Celeb.create!(name:, bio:, birthdate:, birthplace:)



review1 = Review.create!(
  user_id: user1.id,
  movie_id: bond.id,
  rating: 8,
  heading: "It earns it's runtime",
  review: 'Best bond film after casino royale. The action sequence are breathtaking the score by Hans Zimmer is awesome but the best part about this film is cinematography by Linus Sandgrenhe he has outdone himself. 
  
  I always liked Daniel Craig but in this film Rami Malek and Léa Seydoux stole the show but as they say great villan makes a great film and no doubt this is great film Go watch it without a doubt.',
  spoilers: false
)

review2 = Review.create!(
  user_id: user2.id,
  movie_id: bond.id,
  rating: 3,
  heading: "No, time to sigh.",
  review: "An indulgent mess spoiled by politics.

For me, very little worked. The pre-credits sequence is usually reserved for a cool action setpiece but here we get melodrama for 15 minutes before any threat is presented.

The maguffin is not explained well, who made it? Why? Who's working for who? The villains have almost zero screen time and when they eventually show up in the third act, they have no personality.

The director almost seems embarrassed to put action scenes in and the ones that are there are shot with little interest with the exception of one great pairing of agents in Cuba who actually had some real chemistry together.

As for female 007, again this feels forced and while some may champion the character, I'd have to say that I felt she was simply dull. Every line felt a bit snotty and came off as arrogance. Her presence is not something that breaks the film or will make fans upset, they'd have to care one way or the other to do that and there's just not enough personality here to feel anything for.

And the finalé, I'll just say that it's a first for this franchise and not a welcome one. It didnt subvert my expectations or do anything clever. Just an ugly end to a film that clearly the director had little interest in making.

Craig's final score out of five is about 2.5.",
  spoilers: false
)

review3 = Review.create!(
  user_id: user3.id,
  movie_id: bond.id,
  rating: 10,
  heading: "Thank you Daniel craig and the entire cast and crew",
  review: "Daniel Craig we love you as you made us come out of a bad time and enter the new world with such an amazing movie NO TIME TO DIE is the best bond after casino Royale and boy what a time to get it out special mention to Ana de aramas who is the future superstar I mean for a long film to be this entertaining shows the amount of hard work the whole team has put in Thank you.",
  spoilers: false
)

review4 = Review.create!(
  user_id: user3.id,
  movie_id: bond.id,
  rating: 6,
  heading: "Not necessarily a bad movie, but...",
  review: "Not a great Bond movie. I'm gonna draw a comparison that's probably completely irrelevant for most of the viewers, but at first there was supposed to be Aston Marin Valhalla in this movie. I was looking to see that stylish elegance in action, but it just wasn't there. Ultimately, that's how i felt about the whole movie. Even though there where some beautiful locations, the cinematography was lacking compared to previous ones and it didn't really have the style factor of Bond movies. Other disappointment was how they handled the villains, the character was lost and their actions just didn't whole lot of sense. And even though Rami Malek is an amazing actor, the dialogue just felt kind of empty and forced. Just like the end of the movie.",
  spoilers: false
)

review5 = Review.create!(
  user_id: user3.id,
  movie_id: bond.id,
  rating: 6,
  heading: "The Bond franchise moves forward",
  review: "Skyfall broke new ground, this film does the same.

Broccoli, Wilson and Fukunaga bring in past Bond themes and music and have produced a very thrilling film. Yes, there are great locations and car chases and beautiful women however this is a long film (maybe a little too long) and there are many plot themes with surprises a plenty.

A joy for to watch; you won't forget this Bond film for a while and you'll be discussing it as soon as you are out of the cinema - do try to see it in a cinema if you can.",
  spoilers: false
)