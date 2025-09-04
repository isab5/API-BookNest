CREATE DATABASE booknest;

\c booknest;

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    birth_date DATE,
    country VARCHAR(50),
    language VARCHAR(50),
    literary_genres VARCHAR(100);
    photo_url TEXT
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    summary TEXT,
    author_id INTEGER REFERENCES authors(id) ON DELETE SET NULL
    publication_date DATE,
    pages INT,
    cover_url TEXT,
    language VARCHAR(50),
    genre VARCHAR(50)
);

INSERT INTO authors (name, bio, birth_date, country, language, literary_genres, photo_url) VALUES
('Ali Hazelwood', 'Escritora de romances italiana e professora de neurociência. Muitos de seus trabalhos centram-se em mulheres nas áreas STEM e na academia. Seu romance de estreia, A Hipótese do Amor, foi um best-seller do New York Times.', '1989-12-11', 'Itália', 'Inglês', 'Comédia romântica', 'https://s2-oglobo.glbimg.com/NecvpmbggAeah5BdEAxaeVvSzIQ=/0x0:2249x1841/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2023/6/y/IxmtARQbORn1ZvMh55wg/ali.jpg'),
('Colleen Hoover', 'Escritora norte-americana que escreve principalmente livros que abordam como tema central traumas, violências e a exposição de relacionamentos tóxicos, ambientado no gênero "romântico" de ficção para jovens adultos.', '1979-12-11', 'Estados Unidos', 'Inglês', 'Romance', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRCNsoCxaDlvIpKfIWKyulQ-1V0J1JX-VV5kJr61yz6n69n66-bZ-isfufXTxJ67ckHAZNzMXRAjFP3lsKoef0IIvm9game27HeZquKwQ'),
('Hannah Nicole Maehrer', 'Hannah Nicole Maehrer é uma autora norte-americana, conhecida como @hannahnicolemae no TikTok, que se tornou autora do New York Times com a sua série de fantasia e romance "Assistant to the Villain"', 'null', 'Estados Unidos', 'Inglês', 'Romance', 'https://m.media-amazon.com/images/S/amzn-author-media-prod/gtm8pev8q6ojgdqu3fn8tlsl90.jpg'),
('Agatha Christie', ' Agatha Christie foi uma escritora britânica que atuou como romancista, contista, dramaturga e poetisa.', '1890-09-15', 'Reino Unido', 'Inglês', 'Romance', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Agatha_Christie.png'),
('John Green', 'John Michael Green é um vlogger, empresário, produtor e autor norte-americano de livros para jovens', '1977-08-11', 'Estados Unidos', 'Inglês', 'Ficção juvenil ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6rcDSGJ_5R0whfPXjD6t1bIT2mBbL8LdPw&s'),
('Paula Pimenta ', 'Paula Pimenta é uma escritora brasileira, conhecida principalmente por suas séries de livros "Fazendo Meu Filme" e "Minha Vida Fora de Série".', '1975-06-02', 'Brasil', 'Português', 'Romance', 'https://cdn.pensador.com/img/authors/pa/ul/paula-pimenta-l.jpg'),
('Stephen King', 'Stephen Edwin King é um escritor norte-americano de terror, ficção sobrenatural, suspense, ficção científica e fantasia. Os seus livros já venderam mais de 400 milhões de cópias, com publicações em mais de 40 países. É o 9º autor mais traduzido no mundo.', '1947-09-21', 'Estados Unidos ', 'Inglês', 'Terror', 'https://s2-gq.glbimg.com/T2FdDzxNWiNEmBGwU8wkmjXHQ_4=/0x0:620x621/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_71a8fe14ac6d40bd993eb59f7203fe6f/internal_photos/bs/2022/P/L/OuwBuVQ4uWCXtWnycu0g/stephen-king-gq.jpg'),
('Amanda Lovelace', 'Amanda Lovelace é uma poetisa e escritora americana que ganhou fama com seus livros de poesia, como "A Princesa Salva a Si Mesma Neste Livro"', '1991-11-13', 'Estados Unidos', 'Inglês', 'Poesia', 'https://m.media-amazon.com/images/S/amzn-author-media-prod/vt92t8sc96n305s96iag1650v9.jpg'),
('Raphael Montes', 'Raphael Montes é um escritor e roteirista brasileiro de literatura policial. Estima-se que, até janeiro de 2024, todos os seus livros juntos tenham vendido cerca de 500 mil cópias no Brasil e que a sua obra já tenha sido traduzida para 25 idiomas.', '1990-09-22', 'Brasil', 'português', 'Suspense', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtDfOlT35hrEG2nLufc7kJECewcHqQfvU33_jnogyXa-M4WOA_W1NXTqJQwx8TLJuoKYuzYEhbo08ux0SDCreCooekpE73GmX4cT1d7Mo'),
('J. R. R. Tolkien', 'John Ronald Reuel Tolkien, conhecido mundialmente como J. R. R. Tolkien, foi um escritor, professor universitário e filólogo britânico, nascido na atual África do Sul, que recebeu o título de doutor em Letras e Filologia pela Universidade de Liège e Dublin, em 1954.', '1892-01-03', 'Africa do Sul', 'Inglês', 'Fantasia', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSb43-kIvf-8cwdGAl-6Ii17Um6jOver1OdzQIouP4zFK8xXtcMFJUSZd_jYnvtj6O9goe1iWGE-RkQw4Yd1-DrqCN0KsocGNdS0uqPKlY');

-- Ali Hazelwood – todos os livros traduzidos em português
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('A Hipótese do Amor','Olive Smith, aluna do doutorado em Biologia da Universidade Stanford, acredita na ciência – não em algo incontrolável como o amor.

Depois de sair algumas vezes com Jeremy, ela percebe que sua melhor amiga gosta dele e decide juntá-los. Para mostrar que está feliz com essa escolha, Olive precisa ser convincente: afinal, cientistas exigem provas.

Sem muitas opções, ela resolve inventar um namoro de mentira e, num momento de pânico, beija o primeiro homem que vê pela frente.

O problema é que esse homem é Adam Carlsen, um jovem professor de prestígio – conhecido por levar os alunos às lágrimas. Por isso, Olive fica chocada quando o tirano dos laboratórios concorda em levar adiante a farsa e fingir ser seu namorado.

De repente, seu pequeno experimento parece perigosamente próximo da combustão e aquela pequena possibilidade científica, que era apenas uma hipótese sobre o amor, transforma-se em algo totalmente inesperado.', 1, '2022-04-13', 336, 'https://books.google.com.br/books/publisher/content?id=qLptEAAAQBAJ&hl=pt-BR&pg=PA1&img=1&zoom=3&bul=1&sig=ACfU3U0QXNVyU6-CQh9qmS2-rjcGfOC3DA&w=1280', 'Português', 'Romance'),
('A Razão do Amor', 'A carreira de Bee Königswasser está indo de mal a pior. Quando surge um processo seletivo para liderar um projeto de neuroengenharia da Nasa, ela se faz a pergunta que sempre guiou sua vida: o que Marie Curie faria? Participaria, é claro. Depois de conquistar a vaga, Bee descobre que precisará trabalhar com Levi Ward – um desafio que a mãe da física moderna nunca precisou enfrentar.

Tudo bem, Levi é alto e lindo, com olhos verdes incríveis. E, aparentemente, está sempre pronto para salvá-la quando ela mais precisa. Mas ele também deixou bastante claro o que pensa de Bee quando os dois estavam no doutorado: rivais trabalham melhor quando estão cada um em sua própria galáxia, muito, muito distantes.

Quando o projeto começa a ficar conturbado, Bee não sabe se é seu córtex cerebral lhe pregando peças, mas pode jurar que Levi está apoiando suas decisões, endossando suas ideias... e devorando-a com aqueles olhos. Só de pensar nas possibilidades, ela já fica com os neurônios em polvorosa.

Quando chega a hora de se decidir e arriscar seu coração, só há uma pergunta que realmente importa: o que Bee Königswasser fará?', 1, '2022-08-23', 336, 'https://books.google.com.br/books/publisher/content?id=Luj2EAAAQBAJ&hl=pt-BR&pg=PP1&img=1&zoom=3&bul=1&sig=ACfU3U1XDutnOrrheEdFPhGPGoRUyKCjag&w=1280', 'Português', 'Romance'),
('Amor, teoricamente', 'Elsie Hannaway é uma física teórica que passou anos de sua vida moldando diferentes versões de si mesma. Em alguns dias, ela trabalha como professora adjunta, na esperança de conseguir um emprego melhor. Em outros, compensa seu ridículo salário oferecendo serviços de namorada de mentira, aproveitando sua habilidade de se adaptar exatamente ao que os outros querem dela.

Apesar das dificuldades, ela consegue equilibrar bem seu cuidadoso “Elsie-verso”... até que ele começa a desabar. E o culpado é Jack Smith, o irritante e atraente irmão mais velho de seu cliente favorito, que acaba se revelando um importante físico experimental e um possível obstáculo para o emprego dos sonhos de Elsie.

Ela está pronta para uma guerra declarada de sabotagens acadêmicas, mas não está nem um pouco preparada para aqueles olhares demorados e penetrantes. E logo ela percebe que não precisa fingir ser outra pessoa quando está com Jack.

Será que ser atraída pela órbita de um cientista vai enfim fazê-la colocar em prática suas mais secretas teorias sobre o amor?', 1, '2023-07-31', 368, 'https://m.media-amazon.com/images/I/81iUrbors9L._SY342_.jpg', 'Português', 'Romance'),
('Xeque-mate', 'Mallory Greenleaf não quer mais saber de xadrez. Desde que abandonou o esporte há quatro anos, se preocupa apenas em manter o emprego medíocre numa oficina mecânica para conseguir cuidar da mãe doente e das irmãs mais novas.

Tudo muda quando ela se obriga a participar de um torneio beneficente e, sem querer, derrota o atual campeão mundial, Nolan Sawyer.

A notícia de que Nolan perdeu para uma novata desconhecida deixa o mundo do xadrez em choque. E o pior: ele mal pode esperar para enfrentá-la de novo. Mas Mallory não está nem um pouco interessada nisso.

Só que o sucesso inesperado também representa a chance de ganhar prêmios. E, apesar de tudo, ela não consegue evitar a atração pelo enigmático enxadrista...

Quando o amor pelo esporte que ela tanto quer odiar começa a dominá-la de novo, Mallory logo percebe que nem toda disputa acontece no tabuleiro, que a fama é mais difícil do que parece e que às vezes o xeque-mate é só o começo.', 1, '2023-09-07', 336, 'https://m.media-amazon.com/images/I/81O6eWVPaiL._SY342_.jpg', 'Português', 'Romance'),
('Noiva', 'Misery Lark, filha do vampiro mais poderoso do sudoeste, nunca foi bem-vista pelos seres de sua espécie. Ela passa seus dias anonimamente em meio aos humanos, isolada, até que é chamada para firmar um acordo de paz entre vampiros e licanos, seus inimigos mortais. Para isso, será obrigada a se casar com Lowe Moreland.

Licanos são lobisomens cruéis e imprevisíveis, e o alfa do bando, Lowe, não é exceção. Ele governa o grupo com autoridade absoluta, mas também com justiça. Pela forma como acompanha cada passo de Misery, fica claro que não confia nela. E ele não poderia estar mais certo...

A vampira tem as próprias razões para concordar com o casamento arranjado, razões que nada têm a ver com política ou alianças, mas tudo a ver com a coisa que ela mais preza no mundo.

Misery está disposta a fazer o que for necessário para recuperar o que é seu, mesmo que precise viver sozinha em território licano. Ela só não esperava se sentir atraída por seu inimigo... e ainda ser correspondida.

Em Noiva , Ali Hazelwood mais uma vez brinda o leitor com diálogos divertidos e cenas apaixonantes e sexy, mostrando que sabe escrever romances como ninguém.', 1, '2024-02-06', 368, 'https://m.media-amazon.com/images/I/812RDxFDd8L._SY342_.jpg', 'Português', 'Romance'),
('Não é amor', 'A vida de Rue Siebert não é perfeita, mas ela tem alguns poucos amigos leais e uma carreira de sucesso como engenheira de biotecnologia na Kline, uma das mais promissoras startups no campo da ciência dos alimentos.

Ela lutou muito para construir esse mundinho seguro e agradável, que ameaça desmoronar quando um homem terrivelmente atraente lidera uma aquisição hostil da Kline.

Eli Killgore, sócio da Harkness, tem os próprios motivos para querer tomar a empresa em que Rue trabalha. Acostumado a conseguir o que quer, ele se vê diante de uma angustiante exceção: Rue. A mulher em quem não consegue parar de pensar. A mulher que não pode ter.

Divididos entre a lealdade e uma atração inegável, Rue e Eli têm um caso secreto, casual e com prazo de validade: o dia em que uma das duas empresas vencer o embate. Mas o coração faz negócios arriscados... e joga para ganhar.', 1, '2024-06-13', 368, 'https://m.media-amazon.com/images/I/71i-HM1ZrlL._SY342_.jpg', 'Português', 'Romance'),
('No fundo é amor', 'Scarlett Vandermeer está nadando contra a corrente, tentando equilibrar os estudos com a rotina de atleta. Concentrada em passar para a faculdade de medicina e se recuperar da lesão que quase deu fim à sua carreira nos saltos ornamentais, ela prefere levar uma vida discreta. Não tem tempo para relacionamentos. Ou pelo menos é o que diz para si mesma.

Garoto de ouro da natação, Lukas Blomqvist é capitão da equipe da universidade e campeão mundial, e conquistou tudo isso com muita disciplina. É assim que ele consegue medalhas e quebra recordes: com foco total a cada braçada.

Na superfície, Lukas e Scarlett não têm nada em comum. Até que um segredo vem à tona, e tudo muda.

Então eles fazem um acordo: ter um casinho temporário, que satisfaça as necessidades de ambos e alivie um pouco o estresse pré-Olimpíadas. No entanto, quando se torna cada vez mais difícil ficar longe de Lukas, Scarlett percebe que seu coração talvez esteja adentrando águas perigosas.', 1, '2025-03-13', 464, 'https://m.media-amazon.com/images/I/81XvsucSLVL._SY342_.jpg', 'Português', 'Romance'),
('Odeio te amar', 'Mara, Sadie e Hannah são três grandes amigas e cientistas tentando equilibrar razão e emoção. Embora seus campos de estudo as tenham levado para diferentes partes do mundo, todas elas concordam com uma verdade universal: quando se trata de amor e ciência, os opostos se atraem e algumas misturas podem ser perigosas…

Engenheira ambiental, Mara descobre que a casa que recebeu de herança é um presente de grego quando se vê obrigada a compartilhar o mesmo teto com o outro herdeiro – Liam, um detestável advogado de uma empresa petroleira que faz de tudo para atormentá-la.

Sadie é uma engenheira civil que se interessa por Erik depois de um encontro inesperado, mas ele acaba traindo sua confiança e os dois se afastam. Um dia, eles ficam presos juntos em um elevador de Nova York, e a rivalidade e o amor vão alcançar um novo patamar.

Hannah está trabalhando em uma remota estação de pesquisa do Ártico quando sofre um acidente. A engenheira aeroespacial da Nasa precisa ser resgatada antes que morra de frio... só não esperava que a única pessoa disposta a realizar a perigosa missão seja Ian, o sujeito que tentou arruinar sua carreira.', 1, '2023-04-11', 352, 'https://m.media-amazon.com/images/I/816tKxfHi1L._SY342_.jpg', 'Português', 'Romance'),
('Um amor problemático de verão', 'Maya Killgore tem 23 anos e ainda está descobrindo o que quer da vida.

Conor Harkness tem 38, e Maya não consegue parar de pensar nele.

É um clichê tão grande que o coração dela quase não aguenta: homem mais velho e mulher mais nova, empresário rico e estudante falida, melhor amigo do irmão e a garota na qual ele nunca reparou.

Como Conor adora relembrar, a dinâmica de poder entre eles é totalmente desequilibrada. Qualquer relação entre os dois seria muito problemática e Maya precisa superá-lo. Afinal, Conor já deixou claro que não a quer em sua vida.

Mas nem tudo é o que parece... e clichês às vezes sofrem reviravoltas.

Quando o irmão de Maya decide se casar na Itália, ela e Conor são forçados a passar uma semana juntos em uma charmosa villa siciliana. À beira da praia, em meio a antigas ruínas, comidas maravilhosas e cavernas naturais, Maya percebe que talvez Conor esteja escondendo alguma coisa.

Em meio aos caóticos preparativos para o casamento, ela decide que um romance de verão pode ser justamente o que precisa... mesmo que seja problemático.', 1, '2025-06-26', 453, 'https://m.media-amazon.com/images/I/81WIouSP08L._SY342_.jpg', 'Português', 'Romance'),
('Mate', 'Serena Paris é órfã, sem matilha e única. Apresentar-se como a primeira híbrida humano-lobisomem deveria sanar uma rixa secular entre as espécies. Em vez disso, tornou-se um alvo, presa das implacáveis ​​maquinações políticas entre lobisomens, vampiros e humanos. Com seus inimigos se aproximando, ela só tem uma opção: se ele a aceitar.
Como Alfa da matilha do Noroeste, Koen Alexander impõe obediência. Sua autoridade é tão absoluta que só um tolo ameaçaria sua companheira. Não importa se Serena não retribuir seus sentimentos, nada o impedirá de mantê-la segura.
Mas vampiros e lobisomens sedentos por poder não são as únicas ameaças que perseguem Serena. Cedo ou tarde, seu passado certamente a alcançará — e Koen pode ser a única coisa que a separa da aniquilação total...', 1, '2025-10-07', 464, 'https://m.media-amazon.com/images/I/71wRDmzSobL._SY342_.jpg', 'Português', 'Romance');

-- Colleen Hoover – todos os livros traduzidos em português
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Métrica', NULL, 2, '2013-00-00', NULL, NULL, 'Português', 'Romance YA'),
('Pausa', NULL, 2, '2013-00-00', NULL, NULL, 'Português', 'Romance YA'),
('Essa Garota', NULL, 2, '2014-00-00', NULL, NULL, 'Português', 'Romance YA'),
('Um Caso Perdido', NULL, 2, '2022-00-00', NULL, NULL, 'Português', 'Romance YA'),
('Sem Esperança', NULL, 2, '2022-00-00', NULL, NULL, 'Português', 'Romance YA'),
('Em Busca de Cinderela', NULL, 2, '2022-00-00', NULL, NULL, 'Português', 'Novela'),
('Em Busca da Perfeição', NULL, 2, '2022-00-00', NULL, NULL, 'Português', 'Novela'),
('Talvez Um Dia', NULL, 2, '2016-00-00', NULL, NULL, 'Português', 'Romance YA'),
('Talvez Agora', NULL, 2, '2020-00-00', NULL, NULL, 'Português', 'Romance YA'),
('É Assim Que Acaba', NULL, 2, '2018-00-00', NULL, NULL, 'Português', 'Romance'),
('É Assim Que Começa', NULL, 2, '2022-00-00', NULL, NULL, 'Português', 'Romance'),
('O Lado Feio do Amor', NULL, 2, '2015-00-00', NULL, NULL, 'Português', 'Romance'),
('Confesse', NULL, 2, '2017-00-00', NULL, NULL, 'Português', 'Romance'),
('Novembro, 9', NULL, 2, '2016-00-00', NULL, NULL, 'Português', 'Romance'),
('Tarde Demais', NULL, 2, '2018-00-00', NULL, NULL, 'Português', 'Romance'),
('As Mil Partes do Meu Coração', NULL, 2, '2018-00-00', NULL, NULL, 'Português', 'Romance'),
('Todas as Suas (Im)Perfeições', NULL, 2, '2019-00-00', NULL, NULL, 'Português', 'Romance'),
('Verity', NULL, 2, '2020-00-00', NULL, NULL, 'Português', 'Thriller'),
('Se Não Fosse Você', NULL, 2, '2020-00-00', NULL, NULL, 'Português', 'Romance'),
('Até o Verão Terminar', NULL, 2, '2021-00-00', NULL, NULL, 'Português', 'Romance'),
('Layla', NULL, 2, '2021-00-00', NULL, NULL, 'Português', 'Romance'),
('Uma Segunda Chance', NULL, 2, '2022-00-00', NULL, NULL, 'Português', 'Romance');

-- Hannah Nicole Maehrer – única obra disponível
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Assistant to the Villain', NULL, 3, NULL, NULL, NULL, 'Inglês', 'Fantasia Romântica');


-- Agatha Christie – 5 clássicos traduzidos
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Assassinato no Expresso do Oriente', NULL, 4, '1934-00-00', NULL, NULL, 'Português', 'Romance Policial'),
('O Assassinato de Roger Ackroyd', NULL, 4, '1926-00-00', NULL, NULL, 'Português', 'Romance Policial'),
('E Não Sobrou Nenhum', NULL, 4, '1939-00-00', NULL, NULL, 'Português', 'Romance Policial'),
('Morte no Nilo', NULL, 4, '1937-00-00', NULL, NULL, 'Português', 'Romance Policial'),
('O Caso dos Dez Negrinhos', NULL, 4, '1939-00-00', NULL, NULL, 'Português', 'Romance Policial');

-- John Green – 5 traduções
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('A Culpa é das Estrelas', NULL, 5, '2012-00-00', NULL, NULL, 'Português', 'Ficção Juvenil'),
('Quem é Você, Alasca?', NULL, 5, '2005-00-00', NULL, NULL, 'Português', 'Ficção Juvenil'),
('Cidades de Papel', NULL, 5, '2008-00-00', NULL, NULL, 'Português', 'Ficção Juvenil'),
('Tully', NULL, 5, '2007-00-00', NULL, NULL, 'Português', 'Ficção Juvenil'),
('O Teorema Katherine', NULL, 5, '2006-00-00', NULL, NULL, 'Português', 'Ficção Juvenil');

-- Paula Pimenta – 5 livros/populares brasileiros
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Fazendo Meu Filme', NULL, 6, '2008-00-00', NULL, NULL, 'Português', 'Romance Juvenil'),
('Fazendo Meu Filme 2', NULL, 6, '2009-00-00', NULL, NULL, 'Português', 'Romance Juvenil'),
('Minha Vida Fora de Série', NULL, 6, '2009-00-00', NULL, NULL, 'Português', 'Romance Juvenil'),
('Minha Vida Fora de Série 2', NULL, 6, '2010-00-00', NULL, NULL, 'Português', 'Romance Juvenil'),
('Confissões de Uma Garota Excluída', NULL, 6, '2011-00-00', NULL, NULL, 'Português', 'Romance Juvenil');

-- Stephen King – 5 obras traduzidas
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Carrie – A Estranha', NULL, 7, '1974-00-00', NULL, NULL, 'Português', 'Terror'),
('O Iluminado', NULL, 7, '1977-00-00', NULL, NULL, 'Português', 'Terror'),
('A Dança da Morte', NULL, 7, '1978-00-00', NULL, NULL, 'Português', 'Ficção Apocalíptica'),
('It – A Coisa', NULL, 7, '1986-00-00', NULL, NULL, 'Português', 'Terror'),
('Misery', NULL, 7, '1988-00-00', NULL, NULL, 'Português', 'Thriller');

-- Amanda Lovelace – poesia traduzida
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('A Princesa Salva a Si Mesma Neste Livro', NULL, 8, '2016-00-00', NULL, NULL, 'Português', 'Poesia'),
('Mar da Tristeza', NULL, 8, '2017-00-00', NULL, NULL, 'Português', 'Poesia'),
('Você é Mais Corajosa do que Pensa', NULL, 8, '2019-00-00', NULL, NULL, 'Português', 'Poesia'),
('Heróis Não Nasceram para Morrer', NULL, 8, '2020-00-00', NULL, NULL, 'Português', 'Poesia'),
('Um Lugar Bonito para Morrer', NULL, 8, '2021-00-00', NULL, NULL, 'Português', 'Poesia');

-- Raphael Montes – todos os livros conforme listagem completa
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Suicidas', NULL, 9, '2012-00-00', NULL, NULL, 'Português', 'Suspense'),
('Dias Perfeitos', NULL, 9, '2014-03-18', NULL, NULL, 'Português', 'Suspense'),
('O Vilarejo', NULL, 9, '2015-00-00', NULL, NULL, 'Português', 'Contos de terror'),
('Jantar Secreto', NULL, 9, '2016-00-00', NULL, NULL, 'Português', 'Suspense'),
('Bom Dia, Verônica', NULL, 9, '2016-00-00', NULL, NULL, 'Português', 'Suspense Policial'),
('Uma Mulher no Escuro', NULL, 9, '2019-00-00', NULL, NULL, 'Português', 'Suspense/Terror'),
('A Mágica Mortal: Uma aventura do Esquadrão Zero', NULL, 9, '2023-00-00', NULL, NULL, 'Português', 'Fantasia Juvenil'),
('Uma Família Feliz', NULL, 9, '2024-00-00', NULL, NULL, 'Português', 'Romance Policial');

-- Tolkien – 5 clássicos traduzidos
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('O Hobbit', NULL, 10, '1937-00-00', NULL, NULL, 'Português', 'Fantasia'),
('O Senhor dos Anéis: A Sociedade do Anel', NULL, 10, '1954-00-00', NULL, NULL, 'Português', 'Fantasia Épica'),
('O Senhor dos Anéis: As Duas Torres', NULL, 10, '1954-00-00', NULL, NULL, 'Português', 'Fantasia Épica'),
('O Senhor dos Anéis: O Retorno do Rei', NULL, 10, '1955-00-00', NULL, NULL, 'Português', 'Fantasia Épica'),
('O Silmarillion', NULL, 10, '1977-00-00', NULL, NULL, 'Português', 'Fantasia');

