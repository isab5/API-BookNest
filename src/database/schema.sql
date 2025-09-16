CREATE DATABASE booknest;

\c booknest;

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    birth_date DATE,
    country VARCHAR(50),
    language VARCHAR(50),
    literary_genres VARCHAR(100),
    photo_url TEXT
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    summary TEXT,
    author_id INTEGER REFERENCES authors(id) ON DELETE SET NULL,
    publication_date DATE,
    price DECIMAL(10, 2),
    pages INT,
    cover_url TEXT,
    language VARCHAR(50),
    genre VARCHAR(50)
);

INSERT INTO authors (name, bio, birth_date, country, language, literary_genres, photo_url) VALUES
('Ali Hazelwood', 'Italian romance writer and neuroscience professor. Many of her works focus on women in STEM fields and academia. Her debut novel, The Love Hypothesis, was a New York Times bestseller.', '1989-12-11', 'Italy', 'English', 'Romantic Comedy', 'https://s2-oglobo.glbimg.com/NecvpmbggAeah5BdEAxaeVvSzIQ=/0x0:2249x1841/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2023/6/y/IxmtARQbORn1ZvMh55wg/ali.jpg'),
('Colleen Hoover', 'American writer who primarily writes books that deal with trauma, violence, and the exposure of toxic relationships, set in the “romantic” young adult fiction genre.', '1979-12-11', 'United States', 'English', 'Romance', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRCNsoCxaDlvIpKfIWKyulQ-1V0J1JX-VV5kJr61yz6n69n66-bZ-isfufXTxJ67ckHAZNzMXRAjFP3lsKoef0IIvm9game27HeZquKwQ'),
('Hannah Nicole Maehrer', 'Hannah Nicole Maehrer is an American author, known as @hannahnicolemae on TikTok, who became a New York Times bestselling author with her fantasy romance series "Assistant to the Villain".', NULL, 'United States', 'English', 'Romance', 'https://m.media-amazon.com/images/S/amzn-author-media-prod/gtm8pev8q6ojgdqu3fn8tlsl90.jpg'),
('Agatha Christie', 'Agatha Christie was a British writer who worked as a novelist, short story writer, playwright, and poet.', '1890-09-15', 'United Kingdom', 'English', 'Romance', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Agatha_Christie.png'),
('John Green', 'John Michael Green is an American vlogger, entrepreneur, producer, and writer of young adult books.', '1977-08-11', 'United States', 'English', 'Young Adult Fiction', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6rcDSGJ_5R0whfPXjD6t1bIT2mBbL8LdPw&s'),
('Paula Pimenta', 'Paula Pimenta is a Brazilian writer, best known for her book series "Fazendo Meu Filme" and "Minha Vida Fora de Série".', '1975-06-02', 'Brazil', 'Portuguese', 'Romance', 'https://cdn.pensador.com/img/authors/pa/ul/paula-pimenta-l.jpg'),
('Stephen King', 'Stephen Edwin King is an American writer of horror, supernatural fiction, suspense, science fiction, and fantasy. His books have sold over 400 million copies, published in more than 40 countries. He is also the ninth most translated author in the world.', '1947-09-21', 'United States', 'English', 'Horror', 'https://www.infoescola.com/wp-content/uploads/2017/09/Stephen-King_96909487.jpg'),
('Amanda Lovelace', 'Amanda Lovelace is an American poet and writer who gained fame with her poetry books such as "The Princess Saves Herself in This One".', '1991-11-13', 'United States', 'English', 'Poetry', 'https://m.media-amazon.com/images/S/amzn-author-media-prod/vt92t8sc96n305s96iag1650v9.jpg'),
('Raphael Montes', 'Raphael Montes is a Brazilian writer and screenwriter of crime literature. By January 2024, all his books together have sold about 500,000 copies in Brazil and his work has been translated into 25 languages.', '1990-09-22', 'Brazil', 'Portuguese', 'Thriller', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtDfOlT35hrEG2nLufc7kJECewcHqQfvU33_jnogyXa-M4WOA_W1NXTqJQwx8TLJuoKYuzYEhbo08ux0SDCreCooekpE73GmX4cT1d7Mo'),
('J. R. R. Tolkien', 'John Ronald Reuel Tolkien, known worldwide as J.R.R. Tolkien, was a writer, university professor, and British philologist, born in present-day South Africa, who received a doctorate in Letters and Philology from the University of Liege and Dublin in 1954.', '1892-01-03', 'South Africa', 'English', 'Fantasy', 'https://cdn.britannica.com/65/66765-050-63A945A7/JRR-Tolkien.jpg');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('The Love Hypothesis', 'Olive, a PhD student in Biology, pretends to date the feared professor Adam to help a friend, but the ruse becomes real.', 1, '2022-04-13', 49.90, 336, 'https://m.media-amazon.com/images/I/81LTEfXYgcL._SY342_.jpg', 'Portuguese', 'Romance'),
('Love on the Brain', 'Bee, a neuroscientist, must work with her rival Levi on a NASA project and discovers unexpected feelings.', 1, '2022-08-23', 52.90, 336, 'https://m.media-amazon.com/images/I/81bkmJnflPL._SY342_.jpg', 'Portuguese', 'Romance'),
('Love, Theoretically', 'Elsie, a theoretical physicist and fake girlfriend, has her life turned upside down by Jack, a client brother.', 1, '2023-07-31', 54.90, 368, 'https://m.media-amazon.com/images/I/81iUrbors9L._SY342_.jpg', 'Portuguese', 'Romance'),
('Checkmate', 'Mallory, a former chess player, returns to the scene after defeating the world champion and gets involved in disputes and romance.', 1, '2023-09-07', 56.90, 336, 'https://m.media-amazon.com/images/I/81O6eWVPaiL._SY342_.jpg', 'Portuguese', 'Romance'),
('Bride', 'Misery, a vampire, agrees to an arranged marriage with the lycan alpha Lowe to form an alliance, but gets emotionally involved.', 1, '2024-02-06', 59.90, 368, 'https://m.media-amazon.com/images/I/812RDxFDd8L._SY342_.jpg', 'Portuguese', 'Romance'),
('Not in Love', 'Rue, a biotech engineer, gets involved with Eli during a hostile takeover of her company, mixing business and passion.', 1, '2024-06-13', 62.90, 368, 'https://m.media-amazon.com/images/I/71i-HM1ZrlL._SY342_.jpg', 'Portuguese', 'Romance'),
('Deep End', 'Scarlett, an athlete and student, makes a deal for a temporary relationship with Lukas, a swimming champion, but falls in love.', 1, '2025-03-13', 64.90, 464, 'https://m.media-amazon.com/images/I/81XvsucSLVL._SY342_.jpg', 'Portuguese', 'Romance'),
('Loathe to Love You', 'Three scientist friends, Mara, Sadie, and Hannah, face romantic and professional challenges in interconnected stories.', 1, '2023-04-11', 49.90, 352, 'https://m.media-amazon.com/images/I/816tKxfHi1L._SY342_.jpg', 'Portuguese', 'Romance'),
('Problematic Summer Romance', 'Maya and Conor resist attraction during a week together in Italy, facing differences and secrets.', 1, '2025-06-26', 66.90, 453, 'https://m.media-amazon.com/images/I/81WIouSP08L._SY342_.jpg', 'Portuguese', 'Romance'),
('Mate', 'Serena, a human-werewolf hybrid, needs the protection of alpha Koen to survive the species dispute.', 1, '2025-10-07', 69.90, 464, 'https://m.media-amazon.com/images/I/71wRDmzSobL._SY342_.jpg', 'Portuguese', 'Romance');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Slammed', 'After losing her father, Lake meets Will and discovers the power of poetry and love amid pain.', 2, '2013-06-07', 47.90, 303, 'https://m.media-amazon.com/images/I/91eZao2mhTL._SY342_.jpg', 'Portuguese', 'Romance'),
('Point of Retreat', 'Will and Layken face challenges and insecurities that test their love as they deal with the past.', 2, '2013-11-07', 47.90, 304, 'https://m.media-amazon.com/images/I/718la6Hn1rS._SY342_.jpg', 'Portuguese', 'Romance'),
('This Girl', 'Will and Lake revisit their love story from his perspective, facing secrets from the past.', 2, '2014-09-25', 49.90, 319, 'https://m.media-amazon.com/images/I/91WkdA80scL._SY342_.jpg', 'Portuguese', 'Romance'),
('Hopeless', 'Sky meets Holder, and together they face painful truths about the past and the power of love.', 2, '2022-03-28', 54.90, 384, 'https://m.media-amazon.com/images/I/81BnNuSP4uL._SY342_.jpg', 'Portuguese', 'Romance'),
('Losing Hope', 'Holder reveals his side of the story, seeking redemption and facing childhood traumas.', 2, '2015-01-16', 49.90, 320, 'https://m.media-amazon.com/images/I/51bbZ5kctdL._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('Finding Cinderella & Finding Perfect', 'Six and Daniel have an intense and unlikely romance, facing challenges and secrets.', 2, '2022-04-04', 42.90, 256, 'https://m.media-amazon.com/images/I/91hnhxCy8LL._SY342_.jpg', 'Portuguese', 'Novella'),
('Maybe Someday', 'Sydney and Ridge grow closer through music, but obstacles and feelings complicate their relationship.', 2, '2016-04-19', 47.90, 368, 'https://m.media-amazon.com/images/I/41HIwVt9GqL._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('Maybe Now', 'After new changes in their lives, Ridge, Sydney, and Maggie deal with challenges and the meaning of togetherness.', 2, '2020-11-02', 49.90, 352, 'https://m.media-amazon.com/images/I/81GH54cTScL._SY342_.jpg', 'Portuguese', 'Romance'),
('It Ends With Us', 'Lily meets Ryle but discovers the toxic side of the relationship and must make difficult decisions.', 2, '2018-01-18', 54.90, 368, 'https://m.media-amazon.com/images/I/51i7kH+rh9L._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('It Starts With Us', 'Lily tries to restart with Atlas while dealing with her jealous ex-husband and family challenges.', 2, '2022-10-18', 59.90, 336, 'https://m.media-amazon.com/images/I/81Izv2GRWoL._SY342_.jpg', 'Portuguese', 'Romance'),
('Ugly Love', 'Tate gets involved in a no-strings relationship with Miles but discovers deep feelings.', 2, '2015-06-23', 54.90, 336, 'https://m.media-amazon.com/images/I/51RT++oGS6L._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('Confess', 'Auburn and Owen fall in love while secrets threaten to tear them apart.', 2, '2017-06-08', 44.90, 320, 'https://m.media-amazon.com/images/I/51pY8SSBSGL._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('November 9', 'Fallon and Ben meet every year on the same day, but secrets can change everything between them.', 2, '2016-09-06', 47.90, 352, 'https://m.media-amazon.com/images/I/91YbRs+x+cL._SY342_.jpg', 'Portuguese', 'Romance'),
('Too Late', 'Sloan is trapped in an abusive relationship, but Carter may be her chance for freedom.', 2, '2018-06-04', 49.90, 384, 'https://m.media-amazon.com/images/I/81NqyuC2M3L._SY342_.jpg', 'Portuguese', 'Romance'),
('Without Merit', 'Merit decides to reveal her family secrets, learning about forgiveness and acceptance.', 2, '2018-11-05', 47.90, 336, 'https://m.media-amazon.com/images/I/814pUv-EGbL._SY342_.jpg', 'Portuguese', 'Romance'),
('All Your Perfects', 'Quinn and Graham struggle to save their marriage after facing hardships and infertility.', 2, '2019-06-24', 47.90, 304, 'https://m.media-amazon.com/images/I/81Vhnel+xxL._SY342_.jpg', 'Portuguese', 'Romance'),
('Verity', 'Lowen is hired to finish a bestselling series but discovers dark secrets about Verity.', 2, '2020-03-09', 54.90, 320, 'https://m.media-amazon.com/images/I/91SDZ2eUj+L._SY342_.jpg', 'Portuguese', 'Thriller'),
('Regretting You', 'After a tragedy, mother and daughter must learn to rebuild their relationship and deal with secrets.', 2, '2020-10-22', 52.90, 400, 'https://m.media-amazon.com/images/I/41X3LFq3O8L._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('Heart Bones', 'Beyah spends the summer with her father and gets involved with her neighbor Samson, changing her life.', 2, '2021-08-30', 49.90, 336, 'https://m.media-amazon.com/images/I/51ccTKC7y1L._SY445_SX342_.jpg', 'Portuguese', 'Romance'),
('Layla', 'Leeds tries to save his relationship with Layla after trauma but finds himself torn between her and Willow.', 2, '2021-04-19', 49.90, 368, 'https://m.media-amazon.com/images/I/91-M+6ZOjuL._SY342_.jpg', 'Portuguese', 'Romance'),
('Reminders of Him', 'After leaving prison, Kenna tries to reconnect with her daughter and finds support in Ledger.', 2, '2022-05-31', 54.90, 394, 'https://m.media-amazon.com/images/I/51fMZPtkW+L._SY445_SX342_.jpg', 'Portuguese', 'Romance');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Assistant to the Villain', 'Evie Sage takes the job as assistant to the most feared Villain in the kingdom and must deal with dangers, magical chaos, and an unexpected passion for her boss.', 3, '2024-01-08', 54.90, 512, 'https://m.media-amazon.com/images/I/81DkKVIavBL._SY342_.jpg', 'Portuguese', 'Romantic Fantasy'),
('Apprentice to the Villain', 'While the Villain disappears, Evie must protect the castle, learn new skills, and face betrayals to save the kingdom.', 3, '2024-08-29', 62.90, 544, 'https://m.media-amazon.com/images/I/81Q4iEvgkSL._SY342_.jpg', 'Portuguese', 'Romantic Fantasy'),
('Accomplice to the Villain', 'Now the Villains right hand, Evie faces magical threats, enemies, and must decide how far her loyalty—and her heart—will go.', 3, '2025-08-25', 69.90, 608, 'https://m.media-amazon.com/images/I/81SKr7i3EHL._SY342_.jpg', 'Portuguese', 'Romantic Fantasy');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Murder on the Orient Express', 'Hercule Poirot investigates a murder aboard the Orient Express, with many suspects and twists.', 4, '1934-01-01', 54.90, 240, 'https://m.media-amazon.com/images/I/81Zp6MFxIDL._SY342_.jpg', 'Portuguese', 'Detective Novel'),
('The Murder of Roger Ackroyd', 'Detective Poirot unravels the mystery surrounding the death of millionaire Roger Ackroyd in an English village.', 4, '1926-06-01', 49.90, 296, 'https://m.media-amazon.com/images/I/A1YT3xGKJFL._SY342_.jpg', 'Portuguese', 'Detective Novel'),
('And Then There Were None', 'Ten people are invited to an island and begin to die one by one, in one of the greatest suspense classics.', 4, '1939-11-06', 64.90, 400, 'https://m.media-amazon.com/images/I/71u9uqTYBcL._SY342_.jpg', 'Portuguese', 'Detective Novel'),
('Death on the Nile', 'During a cruise on the Nile, Poirot investigates the murder of a young wealthy woman surrounded by suspects.', 4, '1937-11-01', 54.90, 320, 'https://m.media-amazon.com/images/I/71Jt2eJxI6L._SY342_.jpg', 'Portuguese', 'Detective Novel'),
('Ten Little Indians', 'Ten people isolated on an island are accused of crimes and begin to die mysteriously, one by one.', 4, '1939-01-01', 46.90, 256, 'https://m.media-amazon.com/images/I/41Z7JLCp57L._UF1000,1000_QL80_.jpg', 'Portuguese', 'Detective Novel');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('The Fault in Our Stars', 'Hazel, a terminally ill patient, finds new meaning in her life through Augustus.', 5, '2012-11-13', 54.90, 313, 'https://m.media-amazon.com/images/I/811ivBP1rsL._SY342_.jpg', 'Portuguese', 'Young Adult Fiction'),
('Looking for Alaska', 'Miles goes searching for the "Great Perhaps" and falls in love with Alaska, changing his life forever.', 5, '2005-03-03', 44.90, 336, 'https://m.media-amazon.com/images/I/715+3WHXWyL._SY342_.jpg', 'Portuguese', 'Young Adult Fiction'),
('Paper Towns', 'After a night of adventures, Quentin tries to unravel the mysterious disappearance of Margo.', 5, '2008-10-16', 44.90, 368, 'https://m.media-amazon.com/images/I/61otKosI+OL._SY342_.jpg', 'Portuguese', 'Young Adult Fiction'),
('Turtles All the Way Down', 'Aza searches for a missing billionaire while dealing with her own emotional struggles.', 5, '2017-10-10', 49.90, 272, 'https://m.media-amazon.com/images/I/81jO4GHLmuL._SY342_.jpg', 'Portuguese', 'Young Adult Fiction'),
('An Abundance of Katherines', 'Colin tries to predict the end of relationships after being rejected by nineteen Katherines.', 5, '2006-09-21', 39.90, 304, 'https://m.media-amazon.com/images/I/41N5emPrK6L._SY445_SX342_.jpg', 'Portuguese', 'Young Adult Fiction');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Fazendo Meu Filme', 'Tells the story of Fani, a teenager passionate about cinema who lives the dilemmas of youth, friendships, loves, and discoveries.', 6, '2009-10-08', 44.90, 336, 'https://m.media-amazon.com/images/I/813Xz4-o-gL._UF1000,1000_QL80_.jpg', 'Portuguese', 'Young Adult Romance'),
('Fazendo Meu Filme 2', 'Continuation of Fanis journey, now facing the challenges of an exchange program abroad, long-distance friendships, and new feelings.', 6, '2010-08-10', 47.90, 424, 'https://m.media-amazon.com/images/I/81PYZBeaNfL._UF1000,1000_QL80_.jpg', 'Portuguese', 'Young Adult Romance'),
('Minha Vida Fora de Serie', 'Narrates the life of Priscila, a young girl who moves to another city and needs to adapt to new friends, loves, and adolescent situations.', 6, '2011-08-31', 44.90, 408, 'https://m.media-amazon.com/images/I/81LY6nLXdmL.jpg', 'Portuguese', 'Young Adult Romance'),
('Minha Vida Fora de Serie 2', 'Continuation of Priscilas story, deepening her relationships, personal discoveries, and typical youth conflicts.', 6, '2013-06-16', 47.90, 420, 'https://m.media-amazon.com/images/I/51iqQ5A8LBL._SY445_SX342_.jpg', 'Portuguese', 'Young Adult Romance'),
('Cinderela Pop', 'Cintia is a teenager whose life changes drastically after her parents separation and the arrival of an unbearable stepmother. Between parties and music, she discovers new ways to be happy and finds love in an unexpected way.', 6, '2015-02-23', 39.90, 160, 'https://m.media-amazon.com/images/I/51GosKebKKL._SY445_SX342_.jpg', 'Portuguese', 'Young Adult Romance');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Carrie', 'Stephen Kings first novel tells the story of Carrie White, a shy teenager with telekinetic powers who faces bullying at school and oppression from her fanatical mother, culminating in tragedy.', 7, '1974-04-05', 39.90, 208, 'https://m.media-amazon.com/images/I/91gl1Ab8wCL._SY342_.jpg', 'Portuguese', 'Horror'),
('The Shining', 'Jack Torrance, a writer in crisis, accepts the job as caretaker of an isolated hotel in the mountains. Together with his wife and son, he faces supernatural forces that awaken his madness.', 7, '1977-01-28', 54.90, 507, 'https://m.media-amazon.com/images/I/41zaEFaE+SL._SY445_SX342_.jpg', 'Portuguese', 'Horror'),
('The Stand', 'After the accidental release of a deadly virus, the worlds population is devastated. The survivors split into two groups and face a battle between good and evil.', 7, '1978-09-01', 89.90, 1248, 'https://m.media-amazon.com/images/I/51Wpx+aPtZS._SY445_SX342_.jpg', 'Portuguese', 'Apocalyptic Fiction'),
('It', 'A group of friends faces an evil entity that takes the form of a clown named Pennywise, terrorizing the town of Derry for decades.', 7, '1986-09-15', 69.90, 1104, 'https://m.media-amazon.com/images/I/51z0s3GcvwL._SY445_SX342_.jpg', 'Portuguese', 'Horror'),
('Misery', 'Writer Paul Sheldon suffers an accident and is rescued by Annie Wilkes, his number one fan. She holds him captive and forces him to write a new book under psychological torture.', 7, '1987-06-08', 44.90, 352, 'https://m.media-amazon.com/images/I/91ocgbfq55L._SY342_.jpg', 'Portuguese', 'Thriller');


INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('The Princess Saves Herself in This One', 'First book in the "Women Are Some Kind of Magic" series. Poems about pain, loss, trauma, healing, and female empowerment.', 8, '2016-02-14', 38.90, 208, 'https://m.media-amazon.com/images/I/510CMxWIujL._SY445_SX342_.jpg', 'Portuguese', 'Poetry'),
('The Witch Doesnt Burn in This One', 'Second volume in the series, denouncing abuse and inequality, exalting female strength and resistance.', 8, '2018-03-06', 38.90, 208, 'https://m.media-amazon.com/images/I/611H92p9R9L._SY342_.jpg', 'Portuguese', 'Poetry'),
('The Mermaids Voice Returns in This One', 'Third volume in the series. Poems that rescue mermaid myths and explore courage, femininity, and self-discovery.', 8, '2019-03-05', 44.90, 208, 'https://m.media-amazon.com/images/I/41Uo7+hbTCL._SY445_SX342_.jpg', 'Portuguese', 'Poetry'),
('Break Your Glass Slippers', 'First book of the "You Are Your Own Fairy Tale" collection. A feminist retelling of fairy tales, questioning standards of perfection.', 8, '2020-09-22', 44.90, 224, 'https://m.media-amazon.com/images/I/41N0MaVCn-L._SY445_SX342_.jpg', 'Portuguese', 'Poetry'),
('Shine Your Icy Crown', 'Second volume of the "You Are Your Own Fairy Tale" collection. Poems about pain, death, healing, and the search for beauty even in hard times.', 8, '2022-03-08', 49.90, 192, 'https://m.media-amazon.com/images/I/31LQkXoUztL._SY445_SX342_.jpg', 'Portuguese', 'Poetry');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Suicides', 'Debut novel by Raphael Montes. Nine young people gather for a game of Russian roulette and only one will survive. Narrated as a police inquiry.', 9, '2012-03-01', 54.90, 400, 'https://m.media-amazon.com/images/I/51SgIWI-3qL._SY445_SX342_.jpg', 'Portuguese', 'Thriller'),
('Perfect Days', 'A medical student becomes obsessed and kidnaps a young screenwriter to force her to live out the romance he imagined. An internationally acclaimed psychological thriller.', 9, '2014-03-18', 49.90, 280, 'https://m.media-amazon.com/images/I/51VNPOj3F0L._SY445_SX342_.jpg', 'Portuguese', 'Psychological Thriller'),
('The Village', 'Collection of seven horror stories linked to the deadly sins, set in an isolated village. Mixes horror and macabre literature.', 9, '2015-07-20', 39.90, 96, 'https://m.media-amazon.com/images/I/81JaIN9NExL._AC_UY218_.jpg', 'Portuguese', 'Horror/Short Stories'),
('Secret Dinner', 'Four friends organize a secret dinner to raise money, but the event takes a dark turn involving cannibalism and violence.', 9, '2016-04-11', 54.90, 360, 'https://m.media-amazon.com/images/I/71AeB1+8dZL._AC_UY218_.jpg', 'Portuguese', 'Thriller/Horror'),
('Good Morning, Veronica', 'In partnership with Ilana Casoy, tells the story of a police clerk who investigates brutal crimes while dealing with her troubled life.', 9, '2016-05-01', 49.90, 320, 'https://m.media-amazon.com/images/I/61k-lrleRAL._AC_UY218_.jpg', 'Portuguese', 'Crime Thriller'),
('A Woman in the Dark', 'Explores the trauma of a massacre survivor. Years later, she tries to start over, but her past comes back to haunt her.', 9, '2019-05-10', 49.90, 256, 'https://m.media-amazon.com/images/I/91OyxWEVdDL._AC_UY218_.jpg', 'Portuguese', 'Thriller/Horror'),
('The Deadly Magic: An Esquadrão Zero Adventure', 'A youth book that blends mystery and fantasy. A group of young people must face deadly puzzles while discovering magical secrets.', 9, '2023-05-15', 49.90, 248, 'https://m.media-amazon.com/images/I/919+LCGBrML._AC_UY218_.jpg', 'Portuguese', 'Young Fantasy'),
('A Happy Family', 'Latest crime novel by Raphael Montes. A dark portrait of family secrets, abusive relationships, and covered-up crimes.', 9, '2024-03-05', 57.90, 304, 'https://m.media-amazon.com/images/I/81WjGu5a5ZL._AC_UY218_.jpg', 'Portuguese', 'Crime Thriller');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('The Hobbit', 'Published in 1937, the work tells the journey of Bilbo Baggins, a hobbit who embarks on an unexpected adventure with dwarves and the wizard Gandalf to reclaim a treasure guarded by the dragon Smaug.', 10, '1937-09-21', 49.90, 320, 'https://m.media-amazon.com/images/I/91M9xPIf10L._AC_UY218_.jpg', 'Portuguese', 'Fantasy'),
('The Lord of the Rings: The Fellowship of the Ring', 'First volume of the trilogy, released in 1954. The story follows Frodo Baggins on his mission to destroy the One Ring, joining the Fellowship formed by hobbits, men, an elf, a dwarf, and Gandalf.', 10, '1954-07-29', 74.90, 576, 'https://m.media-amazon.com/images/I/81hCVEC0ExL._AC_UY218_.jpg', 'Portuguese', 'Fantasy'),
('The Lord of the Rings: The Two Towers', 'Second volume of the trilogy, published in 1954. The narrative is divided between Frodo and Sam journey to Mordor and the battles faced by the other members of the Fellowship.', 10, '1954-11-11', 74.90, 464, 'https://m.media-amazon.com/images/I/81lQ5N0QwJL._AC_UY218_.jpg', 'Portuguese', 'Fantasy'),
('The Lord of the Rings: The Return of the King', 'Third and last volume of the trilogy, released in 1955. The war for Middle-earth reaches its peak as Frodo and Sam try to destroy the One Ring in Mordor.', 10, '1955-10-20', 74.90, 528, 'https://m.media-amazon.com/images/I/71+4uDgt8JL._AC_UY218_.jpg', 'Portuguese', 'Fantasy'),
('The Silmarillion', 'Published posthumously in 1977, gathers myths and legends of Middle-earth, narrating the creation of the world, the struggle between the Valar and Morgoth, and the origins of elves and men.', 10, '1977-09-15', 64.90, 496, 'https://m.media-amazon.com/images/I/81MoknVer8L._AC_UY218_.jpg', 'Portuguese', 'Fantasy');
