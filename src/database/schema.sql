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
('Ali Hazelwood', 'Escritora de romances italiana e professora de neurociência. Muitos de seus trabalhos centram-se em mulheres nas áreas STEM e na academia. Seu romance de estreia, A Hipótese do Amor, foi um best-seller do New York Times.', '1989-12-11', 'Itália', 'Inglês', 'Comédia romântica', 'https://s2-oglobo.glbimg.com/NecvpmbggAeah5BdEAxaeVvSzIQ=/0x0:2249x1841/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2023/6/y/IxmtARQbORn1ZvMh55wg/ali.jpg'),
('Colleen Hoover', 'Escritora norte-americana que escreve principalmente livros que abordam como tema central traumas, violências e a exposição de relacionamentos tóxicos, ambientado no gênero "romântico" de ficção para jovens adultos.', '1979-12-11', 'Estados Unidos', 'Inglês', 'Romance', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRCNsoCxaDlvIpKfIWKyulQ-1V0J1JX-VV5kJr61yz6n69n66-bZ-isfufXTxJ67ckHAZNzMXRAjFP3lsKoef0IIvm9game27HeZquKwQ'),
('Hannah Nicole Maehrer', 'Hannah Nicole Maehrer é uma autora norte-americana, conhecida como @hannahnicolemae no TikTok, que se tornou autora do New York Times com a sua série de fantasia e romance "Assistant to the Villain"', NULL, 'Estados Unidos', 'Inglês', 'Romance', 'https://m.media-amazon.com/images/S/amzn-author-media-prod/gtm8pev8q6ojgdqu3fn8tlsl90.jpg'),
('Agatha Christie', ' Agatha Christie foi uma escritora britânica que atuou como romancista, contista, dramaturga e poetisa.', '1890-09-15', 'Reino Unido', 'Inglês', 'Romance', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Agatha_Christie.png'),
('John Green', 'John Michael Green é um vlogger, empresário, produtor e autor norte-americano de livros para jovens', '1977-08-11', 'Estados Unidos', 'Inglês', 'Ficção juvenil ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6rcDSGJ_5R0whfPXjD6t1bIT2mBbL8LdPw&s'),
('Paula Pimenta ', 'Paula Pimenta é uma escritora brasileira, conhecida principalmente por suas séries de livros "Fazendo Meu Filme" e "Minha Vida Fora de Série".', '1975-06-02', 'Brasil', 'Português', 'Romance', 'https://cdn.pensador.com/img/authors/pa/ul/paula-pimenta-l.jpg'),
('Stephen King', 'Stephen Edwin King e um escritor norte-americano de terror, ficção sobrenatural, suspense, ficção científica e fantasia. Os seus livros já venderam mais de 400 milhões de copias, com publicações em mais de 40 países. Também é o nono autor mais traduzido no mundo.', '1947-09-21', 'Estados Unidos ', 'Ingles', 'Terror', 'https://www.infoescola.com/wp-content/uploads/2017/09/Stephen-King_96909487.jpg'),
('Amanda Lovelace', 'Amanda Lovelace é uma poetisa e escritora americana que ganhou fama com seus livros de poesia, como "A Princesa Salva a Si Mesma Neste Livro"', '1991-11-13', 'Estados Unidos', 'Inglês', 'Poesia', 'https://m.media-amazon.com/images/S/amzn-author-media-prod/vt92t8sc96n305s96iag1650v9.jpg'),
('Raphael Montes', 'Raphael Montes é um escritor e roteirista brasileiro de literatura policial. Estima-se que, até janeiro de 2024, todos os seus livros juntos tenham vendido cerca de 500 mil cópias no Brasil e que a sua obra já tenha sido traduzida para 25 idiomas.', '1990-09-22', 'Brasil', 'português', 'Suspense', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtDfOlT35hrEG2nLufc7kJECewcHqQfvU33_jnogyXa-M4WOA_W1NXTqJQwx8TLJuoKYuzYEhbo08ux0SDCreCooekpE73GmX4cT1d7Mo'),
('J. R. R. Tolkien', 'John Ronald Reuel Tolkien, conhecido mundialmente como J. R. R. Tolkien, foi um escritor, professor universitário e filólogo britânico, nascido na atual África do Sul, que recebeu o título de doutor em Letras e Filologia pela Universidade de Liege e Dublin, em 1954.', '1892-01-03', 'Africa do Sul', 'Inglês', 'Fantasia', 'https://cdn.britannica.com/65/66765-050-63A945A7/JRR-Tolkien.jpg');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('A Hipótese do Amor', 'Olive, doutoranda em Biologia, finge namorar o temido professor Adam para ajudar uma amiga, mas a farsa vira algo real.', 1, '2022-04-13', 49.90, 336, 'https://m.media-amazon.com/images/I/81LTEfXYgcL._SY342_.jpg', 'Português', 'Romance'),
('A Razão do Amor', 'Bee, neurocientista, precisa trabalhar com seu rival Levi em um projeto da NASA e descobre sentimentos inesperados.', 1, '2022-08-23', 52.90, 336, 'https://m.media-amazon.com/images/I/81bkmJnflPL._SY342_.jpg', 'Português', 'Romance'),
('Amor, teoricamente', 'Elsie, física teórica e namorada de aluguel, vê sua vida virar de cabeça para baixo por causa de Jack, irmão de um cliente.', 1, '2023-07-31', 54.90, 368, 'https://m.media-amazon.com/images/I/81iUrbors9L._SY342_.jpg', 'Português', 'Romance'),
('Xeque-mate', 'Mallory, ex-jogadora de xadrez, volta ao cenário ao derrotar o campeão mundial e se envolve em disputas e romance.', 1, '2023-09-07', 56.90, 336, 'https://m.media-amazon.com/images/I/81O6eWVPaiL._SY342_.jpg', 'Português', 'Romance'),
('Noiva', 'Misery, vampira, aceita um casamento arranjado com o alfa licano Lowe para firmar uma aliança, mas se envolve emocionalmente.', 1, '2024-02-06', 59.90, 368, 'https://m.media-amazon.com/images/I/812RDxFDd8L._SY342_.jpg', 'Português', 'Romance'),
('Não é amor', 'Rue, engenheira de biotec, se envolve com Eli durante uma aquisição hostil de sua empresa, misturando negócios e paixão.', 1, '2024-06-13', 62.90, 368, 'https://m.media-amazon.com/images/I/71i-HM1ZrlL._SY342_.jpg', 'Português', 'Romance'),
('No fundo é amor', 'Scarlett, atleta e estudante, faz um acordo de relacionamento temporário com Lukas, campeão de natação, mas se apaixona.', 1, '2025-03-13', 64.90, 464, 'https://m.media-amazon.com/images/I/81XvsucSLVL._SY342_.jpg', 'Português', 'Romance'),
('Odeio te amar', 'Três amigas cientistas, Mara, Sadie e Hannah, enfrentam desafios românticos e profissionais em histórias interligadas.', 1, '2023-04-11', 49.90, 352, 'https://m.media-amazon.com/images/I/816tKxfHi1L._SY342_.jpg', 'Português', 'Romance'),
('Um amor problemático de verão', 'Maya e Conor resistem à atração durante uma semana juntos na Itália, enfrentando diferenças e segredos.', 1, '2025-06-26', 66.90, 453, 'https://m.media-amazon.com/images/I/81WIouSP08L._SY342_.jpg', 'Português', 'Romance'),
('Mate', 'Serena, híbrida de humano e lobisomem, precisa da proteção do alfa Koen para sobreviver à disputa entre espécies.', 1, '2025-10-07', 69.90, 464, 'https://m.media-amazon.com/images/I/71wRDmzSobL._SY342_.jpg', 'Português', 'Romance');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Métrica', 'Após perder o pai, Lake conhece Will e descobre o poder da poesia e do amor em meio à dor.', 2, '2013-06-07', 47.90, 303, 'https://m.media-amazon.com/images/I/91eZao2mhTL._SY342_.jpg', 'Português', 'Romance'),
('Pausa', 'Will e Layken enfrentam desafios e inseguranças que testam seu amor enquanto lidam com o passado.', 2, '2013-11-07', 47.90, 304, 'https://m.media-amazon.com/images/I/718la6Hn1rS._SY342_.jpg', 'Português', 'Romance'),
('Essa Garota', 'Will e Lake relembram sua história de amor da perspectiva dele, enfrentando segredos do passado.', 2, '2014-09-25', 49.90, 319, 'https://m.media-amazon.com/images/I/91WkdA80scL._SY342_.jpg', 'Português', 'Romance'),
('Um Caso Perdido', 'Sky conhece Holder e, juntos, enfrentam verdades dolorosas sobre o passado e o poder do amor.', 2, '2022-03-28', 54.90, 384, 'https://m.media-amazon.com/images/I/81BnNuSP4uL._SY342_.jpg', 'Português', 'Romance'),
('Sem Esperança', 'Holder revela seu lado da história, buscando redenção e enfrentando traumas de infância.', 2, '2015-01-16', 49.90, 320, 'https://m.media-amazon.com/images/I/51bbZ5kctdL._SY445_SX342_.jpg', 'Português', 'Romance'),
('Em Busca de Cinderela e Em busca da perfeição', 'Six e Daniel vivem um romance intenso e improvável, enfrentando desafios e segredos.', 2, '2022-04-04', 42.90, 256, 'https://m.media-amazon.com/images/I/91hnhxCy8LL._SY342_.jpg', 'Português', 'Novela'),
('Talvez Um Dia', 'Sydney e Ridge se aproximam através da música, mas obstáculos e sentimentos complicam a relação.', 2, '2016-04-19', 47.90, 368, 'https://m.media-amazon.com/images/I/41HIwVt9GqL._SY445_SX342_.jpg', 'Português', 'Romance'),
('Talvez Agora', 'Após novas mudanças em suas vidas, Ridge, Sydney e Maggie lidam com desafios e o significado da união.', 2, '2020-11-02', 49.90, 352, 'https://m.media-amazon.com/images/I/81GH54cTScL._SY342_.jpg', 'Português', 'Romance'),
('E Assim Que Acaba', 'Lily conhece Ryle, mas descobre o lado tóxico do relacionamento e precisa tomar decisões difíceis.', 2, '2018-01-18', 54.90, 368, 'https://m.media-amazon.com/images/I/51i7kH+rh9L._SY445_SX342_.jpg', 'Português', 'Romance'),
('E Assim Que Começa', 'Lily tenta recomeçar com Atlas, enquanto lida com o ex-marido ciumento e desafios familiares.', 2, '2022-10-18', 59.90, 336, 'https://m.media-amazon.com/images/I/81Izv2GRWoL._SY342_.jpg', 'Português', 'Romance'),
('O Lado Feio do Amor', 'Tate se envolve em um relacionamento sem compromisso com Miles, mas descobre sentimentos profundos.', 2, '2015-06-23', 54.90, 336, 'https://m.media-amazon.com/images/I/51RT++oGS6L._SY445_SX342_.jpg', 'Português', 'Romance'),
('Confesse', 'Auburn e Owen se apaixonam enquanto segredos ameaçam separá-los.', 2, '2017-06-08', 44.90, 320, 'https://m.media-amazon.com/images/I/51pY8SSBSGL._SY445_SX342_.jpg', 'Português', 'Romance'),
('Novembro, 9', 'Fallon e Ben se encontram todo ano no mesmo dia, mas segredos podem mudar tudo entre eles.', 2, '2016-09-06', 47.90, 352, 'https://m.media-amazon.com/images/I/91YbRs+x+cL._SY342_.jpg', 'Português', 'Romance'),
('Tarde Demais', 'Sloan está presa a um relacionamento abusivo, mas Carter pode ser sua chance de liberdade.', 2, '2018-06-04', 49.90, 384, 'https://m.media-amazon.com/images/I/81NqyuC2M3L._SY342_.jpg', 'Português', 'Romance'),
('As Mil Partes do Meu Coração', 'Merit decide revelar os segredos da família, aprendendo sobre perdão e aceitação.', 2, '2018-11-05', 47.90, 336, 'https://m.media-amazon.com/images/I/814pUv-EGbL._SY342_.jpg', 'Português', 'Romance'),
('Todas as Suas (Im)Perfeições', 'Quinn e Graham lutam para salvar o casamento após enfrentarem dificuldades e infertilidade.', 2, '2019-06-24', 47.90, 304, 'https://m.media-amazon.com/images/I/81Vhnel+xxL._SY342_.jpg', 'Português', 'Romance'),
('Verity', 'Lowen é contratada para terminar uma série de sucesso, mas descobre segredos obscuros sobre Verity.', 2, '2020-03-09', 54.90, 320, 'https://m.media-amazon.com/images/I/91SDZ2eUj+L._SY342_.jpg', 'Português', 'Thriller'),
('Se Não Fosse Você', 'Após uma tragédia, mãe e filha precisam aprender a reconstruir a relação e lidar com segredos.', 2, '2020-10-22', 52.90, 400, 'https://m.media-amazon.com/images/I/41X3LFq3O8L._SY445_SX342_.jpg', 'Português', 'Romance'),
('Até o Verão Terminar', 'Beyah passa o verão com o pai e se envolve com o vizinho Samson, mudando sua vida.', 2, '2021-08-30', 49.90, 336, 'https://m.media-amazon.com/images/I/51ccTKC7y1L._SY445_SX342_.jpg', 'Português', 'Romance'),
('Layla', 'Leeds tenta salvar o relacionamento com Layla após um trauma, mas se vê dividido entre ela e Willow.', 2, '2021-04-19', 49.90, 368, 'https://m.media-amazon.com/images/I/91-M+6ZOjuL._SY342_.jpg', 'Português', 'Romance'),
('Uma Segunda Chance', 'Após sair da prisão, Kenna tenta se reaproximar da filha e encontra apoio em Ledger.', 2, '2022-05-31', 54.90, 394, 'https://m.media-amazon.com/images/I/51fMZPtkW+L._SY445_SX342_.jpg', 'Português', 'Romance');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Assistente do Vilão', 'Evie Sage aceita o trabalho de assistente do Vilão mais temido do reino e precisa lidar com perigos, caos mágico e uma paixão inesperada por seu chefe.', 3, '2024-01-08', 54.90, 512, 'https://m.media-amazon.com/images/I/81DkKVIavBL._SY342_.jpg', 'Português', 'Fantasia Romântica'),
('Aprendiz do Vilão', 'Enquanto o Vilão desaparece, Evie precisa proteger o castelo, aprender novas habilidades e enfrentar traições para salvar o reino.', 3, '2024-08-29', 62.90, 544, 'https://m.media-amazon.com/images/I/81Q4iEvgkSL._SY342_.jpg', 'Português', 'Fantasia Romântica'),
('Aliada do Vilão', 'Agora braço direito do Vilão, Evie enfrenta ameaças mágicas, inimigos e precisa decidir até onde vai sua lealdade – e seu coração.', 3, '2025-08-25', 69.90, 608, 'https://m.media-amazon.com/images/I/81SKr7i3EHL._SY342_.jpg', 'Português', 'Fantasia Romântica');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Assassinato no Expresso do Oriente', 'Hercule Poirot investiga um assassinato a bordo do Expresso do Oriente, com vários suspeitos e reviravoltas.', 4, '1934-01-01', 54.90, 240, 'https://m.media-amazon.com/images/I/81Zp6MFxIDL._SY342_.jpg', 'Português', 'Romance Policial'),
('O Assassinato de Roger Ackroyd', 'O detetive Poirot desvenda o mistério em torno da morte do milionário Roger Ackroyd em uma vila inglesa.', 4, '1926-06-01', 49.90, 296, 'https://m.media-amazon.com/images/I/A1YT3xGKJFL._SY342_.jpg', 'Português', 'Romance Policial'),
('E Não Sobrou Nenhum', 'Dez pessoas são convidadas a uma ilha e começam a morrer uma a uma, em um dos maiores clássicos do suspense.', 4, '1939-11-06', 64.90, 400, 'https://m.media-amazon.com/images/I/71u9uqTYBcL._SY342_.jpg', 'Português', 'Romance Policial'),
('Morte no Nilo',  'Durante um cruzeiro pelo Nilo, Poirot investiga o assassinato de uma jovem milionária cercada de suspeitos.', 4, '1937-11-01', 54.90, 320, 'https://m.media-amazon.com/images/I/71Jt2eJxI6L._SY342_.jpg', 'Português', 'Romance Policial'),
('O Caso dos Dez Negrinhos', 'Dez pessoas isoladas em uma ilha são acusadas de crimes e começam a morrer misteriosamente, uma por uma.', 4, '1939-01-01', 46.90, 256, 'https://m.media-amazon.com/images/I/41Z7JLCp57L._UF1000,1000_QL80_.jpg', 'Português', 'Romance Policial');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('A Culpa é das Estrelas', 'Hazel, paciente terminal, encontra em Augustus um novo sentido para sua vida.', 5, '2012-11-13', 54.90, 313, 'https://m.media-amazon.com/images/I/811ivBP1rsL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('Quem é Você, Alasca?', 'Miles vai em busca do “Grande Talvez” e se apaixona por Alasca, mudando sua vida para sempre.', 5, '2005-03-03', 44.90, 336, 'https://m.media-amazon.com/images/I/715+3WHXWyL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('Cidades de Papel', 'Após uma noite de aventuras, Quentin tenta desvendar o desaparecimento misterioso de Margo.', 5, '2008-10-16', 44.90, 368, 'https://m.media-amazon.com/images/I/61otKosI+OL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('Tartarugas até lá embaixo', 'Aza procura um bilionário desaparecido enquanto enfrenta suas próprias questões emocionais.', 5, '2017-10-10', 49.90, 272, 'https://m.media-amazon.com/images/I/81jO4GHLmuL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('O Teorema Katherine', 'Colin tenta prever o fim dos relacionamentos após ser rejeitado por dezenove Katherines.', 5, '2006-09-21', 39.90, 304, 'https://m.media-amazon.com/images/I/41N5emPrK6L._SY445_SX342_.jpg', 'Português', 'Ficção Juvenil');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Fazendo Meu Filme', 'Conta a história de Fani, uma adolescente apaixonada por cinema que vive os dilemas da juventude, amizades, amores e descobertas.', 6, '2009-10-08', 44.90, 336, 'https://m.media-amazon.com/images/I/813Xz4-o-gL._UF1000,1000_QL80_.jpg', 'Português', 'Romance Juvenil'),
('Fazendo Meu Filme 2', 'Continuação da trajetória de Fani, agora enfrentando os desafios de um intercâmbio no exterior, amizades à distância e novos sentimentos.', 6, '2010-08-10', 47.90, 424, 'https://m.media-amazon.com/images/I/81PYZBeaNfL._UF1000,1000_QL80_.jpg', 'Português', 'Romance Juvenil'),
('Minha Vida Fora de Série', 'Narra a vida de Priscila, uma jovem que se muda para outra cidade e precisa se adaptar a novos amigos, paixões e situações da adolescência.', 6, '2011-08-31', 44.90, 408, 'https://m.media-amazon.com/images/I/81LY6nLXdmL.jpg', 'Português', 'Romance Juvenil'),
('Minha Vida Fora de Série 2', 'Continuação da história de Priscila, aprofundando seus relacionamentos, descobertas pessoais e conflitos típicos da juventude.', 6, '2013-06-16', 47.90, 420, 'https://m.media-amazon.com/images/I/51iqQ5A8LBL._SY445_SX342_.jpg', 'Português', 'Romance Juvenil'),
('Cinderela Pop', 'Cintia é uma adolescente que vê sua vida mudar drasticamente após a separação dos pais e a chegada de uma madrasta insuportável. Entre festas e música, ela descobre novas formas de ser feliz e encontra o amor de uma forma inusitada.', 6, '2015-02-23', 39.90, 160, 'https://m.media-amazon.com/images/I/51GosKebKKL._SY445_SX342_.jpg', 'Português', 'Romance Juvenil');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Carrie – A Estranha', 'Primeiro romance de Stephen King, conta a história de Carrie White, uma adolescente tímida com poderes telecinéticos que enfrenta bullying na escola e a opressão da mãe fanática religiosa, culminando em uma tragédia.', 7, '1974-04-05', 39.90, 208, 'https://m.media-amazon.com/images/I/91gl1Ab8wCL._SY342_.jpg', 'Português', 'Terror'),
('O Iluminado', 'Jack Torrance, um escritor em crise, aceita ser caseiro de um hotel isolado nas montanhas. Junto com a esposa e o filho, enfrenta forças sobrenaturais que despertam sua loucura.', 7, '1977-01-28', 54.90, 507, 'https://m.media-amazon.com/images/I/41zaEFaE+SL._SY445_SX342_.jpg', 'Português', 'Terror'),
('A Dança da Morte', 'Após a liberação acidental de um vírus mortal, a população mundial é devastada. Os sobreviventes se dividem em dois grupos e enfrentam uma batalha entre o bem e o mal.', 7, '1978-09-01', 89.90, 1248, 'https://m.media-amazon.com/images/I/51Wpx+aPtZS._SY445_SX342_.jpg', 'Português', 'Ficção Apocalíptica'),
('It – A Coisa', 'Um grupo de amigos enfrenta uma entidade maligna que assume a forma de um palhaço chamado Pennywise, aterrorizando a cidade de Derry por décadas.', 7, '1986-09-15', 69.90, 1104, 'https://m.media-amazon.com/images/I/51z0s3GcvwL._SY445_SX342_.jpg', 'Português', 'Terror'),
('Misery', 'O escritor Paul Sheldon sofre um acidente e é resgatado por Annie Wilkes, sua fã número um. Ela o mantém em cativeiro e o obriga a escrever uma nova obra sob tortura psicológica.', 7, '1987-06-08', 44.90, 352, 'https://m.media-amazon.com/images/I/91ocgbfq55L._SY342_.jpg', 'Português', 'Thriller');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('A Princesa Salva a Si Mesma Neste Livro', 'Primeiro livro da série "Women Are Some Kind of Magic". Poemas sobre dor, perda, trauma, cura e empoderamento feminino.', 8, '2016-02-14', 38.90, 208, 'https://m.media-amazon.com/images/I/510CMxWIujL._SY445_SX342_.jpg', 'Português', 'Poesia'),
('A Bruxa Não Vai Para a Fogueira Neste Livro', 'Segundo volume da série, que denuncia abusos e desigualdades, exaltando a força e a resistência feminina.', 8, '2018-03-06', 38.90, 208, 'https://m.media-amazon.com/images/I/611H92p9R9L._SY342_.jpg', 'Português', 'Poesia'),
('A Voz da Sereia Volta Neste Livro', 'Terceiro volume da série. Poemas que resgatam mitos de sereias e exploram coragem, feminilidade e autodescoberta.', 8, '2019-03-05', 44.90, 208, 'https://m.media-amazon.com/images/I/41Uo7+hbTCL._SY445_SX342_.jpg', 'Português', 'Poesia'),
('Quebre os Seus Sapatinhos de Cristal', 'Primeiro livro da coleção "You Are Your Own Fairy Tale". Releitura de contos de fadas com olhar feminista, questionando padrões de perfeição.', 8, '2020-09-22', 44.90, 224, 'https://m.media-amazon.com/images/I/41N0MaVCn-L._SY445_SX342_.jpg', 'Português', 'Poesia'),
('Faça Sua Coroa de Gelo Brilhar', 'Segundo volume da coleção "You Are Your Own Fairy Tale". Poemas sobre dor, morte, cura e a busca pela beleza mesmo em momentos difíceis.', 8, '2022-03-08', 49.90, 192, 'https://m.media-amazon.com/images/I/31LQkXoUztL._SY445_SX342_.jpg', 'Português', 'Poesia');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('Suicidas', 'Romance de estreia de Raphael Montes. Nove jovens se reúnem para um jogo de roleta-russa e apenas um sobreviverá. Narrado em formato de inquérito policial.', 9, '2012-03-01', 54.90, 400, 'https://m.media-amazon.com/images/I/51SgIWI-3qL._SY445_SX342_.jpg', 'Português', 'Suspense/Thriller'),
('Dias Perfeitos', 'Um estudante de medicina obcecado sequestra uma jovem roteirista para obrigá-la a viver o romance que ele idealizou. Thriller psicológico de projeção internacional.', 9, '2014-03-18', 49.90, 280, 'https://m.media-amazon.com/images/I/51VNPOj3F0L._SY445_SX342_.jpg', 'Português', 'Suspense Psicológico'),
('O Vilarejo', 'Coletânea de sete contos de terror ligados aos pecados capitais, ambientados em um vilarejo isolado. Mistura horror e literatura macabra.', 9, '2015-07-20', 39.90, 96, 'https://m.media-amazon.com/images/I/81JaIN9NExL._AC_UY218_.jpg', 'Português', 'Terror/Contos'),
('Jantar Secreto', 'Quatro amigos organizam um jantar secreto para arrecadar dinheiro, mas o evento toma rumos sombrios quando envolve canibalismo e violência.', 9, '2016-04-11', 54.90, 360, 'https://m.media-amazon.com/images/I/71AeB1+8dZL._AC_UY218_.jpg', 'Português', 'Suspense/Terror'),
('Bom Dia, Verônica', 'Em parceria com Ilana Casoy, narra a história de uma escrivã da polícia que investiga crimes brutais enquanto lida com sua própria vida conturbada.', 9, '2016-05-01', 49.90, 320, 'https://m.media-amazon.com/images/I/61k-lrleRAL._AC_UY218_.jpg', 'Português', 'Suspense Policial'),
('Uma Mulher no Escuro', 'Explora o trauma de uma sobrevivente de um massacre familiar. Anos depois, ela tenta recomeçar a vida, mas seu passado volta para assombrá-la.', 9, '2019-05-10', 49.90, 256, 'https://m.media-amazon.com/images/I/91OyxWEVdDL._AC_UY218_.jpg', 'Português', 'Suspense/Terror'),
('A Mágica Mortal: Uma Aventura do Esquadrão Zero', 'Livro juvenil que mistura mistério e fantasia. Um grupo de jovens precisa enfrentar enigmas mortais enquanto descobre segredos mágicos.', 9, '2023-05-15', 49.90, 248, 'https://m.media-amazon.com/images/I/919+LCGBrML._AC_UY218_.jpg', 'Português', 'Fantasia Juvenil'),
('Uma Família Feliz', 'Último romance policial de Raphael Montes. Um retrato sombrio de segredos familiares, relacionamentos abusivos e crimes encobertos.', 9, '2024-03-05', 57.90, 304, 'https://m.media-amazon.com/images/I/81WjGu5a5ZL._AC_UY218_.jpg', 'Português', 'Suspense Policial');

INSERT INTO books (title, summary, author_id, publication_date, price, pages, cover_url, language, genre) VALUES
('O Hobbit', 'Publicada em 1937, a obra narra a jornada de Bilbo Bolseiro, um hobbit que parte em uma aventura inesperada com anões e o mago Gandalf para recuperar um tesouro guardado pelo dragão Smaug.', 10, '1937-09-21', 49.90, 320, 'https://m.media-amazon.com/images/I/91M9xPIf10L._AC_UY218_.jpg', 'Português', 'Fantasia'),
('O Senhor dos Anéis: A Sociedade do Anel', 'Primeiro volume da trilogia, lançado em 1954. A história acompanha Frodo Bolseiro em sua missão de destruir o Um Anel, unindo-se à Sociedade do Anel formada por hobbits, homens, um elfo, um anão e Gandalf.', 10, '1954-07-29', 74.90, 576, 'https://m.media-amazon.com/images/I/81hCVEC0ExL._AC_UY218_.jpg', 'Português', 'Fantasia'),
('O Senhor dos Anéis: As Duas Torres', 'Segundo volume da trilogia, publicado em 1954. A narrativa se divide entre a jornada de Frodo e Sam rumo a Mordor e as batalhas enfrentadas pelos demais membros da Sociedade.', 10, '1954-11-11', 74.90, 464, 'https://m.media-amazon.com/images/I/81lQ5N0QwJL._AC_UY218_.jpg', 'Português', 'Fantasia'),
('O Senhor dos Anéis: O Retorno do Rei', 'Terceiro e último volume da trilogia, lançado em 1955. A guerra pela Terra-média chega ao auge, enquanto Frodo e Sam tentam destruir o Um Anel em Mordor.', 10, '1955-10-20', 74.90, 528, 'https://m.media-amazon.com/images/I/71+4uDgt8JL._AC_UY218_.jpg', 'Português', 'Fantasia'),
('O Silmarillion', 'Publicado postumamente em 1977, reúne mitos e lendas da Terra-média, narrando a criação do mundo, a luta entre os Valar e Morgoth e as origens de elfos e homens.', 10, '1977-09-15', 64.90, 496, 'https://m.media-amazon.com/images/I/81MoknVer8L._AC_UY218_.jpg', 'Português', 'Fantasia');


