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
('Métrica', 'Após a morte do pai, a ausência torna-se a maior companheira de Lake. A responsabilidade pela mãe e pelo irmão caçula a congelam num limbo de luto e dor. Por fora, ela parece corajosa e tenaz; por dentro, está perdendo as esperanças. E se mudar do único lar que conheceu não ajuda em nada.
Agora em uma nova casa, em uma nova cidade, ela precisa achar seu caminho. E um rapaz apaixonado por poesia pode ser o guia perfeito. Quando conhece o novo vizinho, Layken imediatamente sente uma intensa conexão. Algo que finalmente parece desanuviar um pouco sua realidade.
Mas o caminho da verdadeira felicidade não é feito de tijolos dourados, e logo uma revelação atordoante faz o novo relacionamento ser bruscamente interrompido. O dia a dia vai se tornando cada vez mais doloroso à medida que eles se esforçam para encontrar um equilíbrio entre os sentimentos que os aproximam e as forças que os separam.
Layken e Will precisam decidir se o amor é mesmo a maior das recompensas. E se estão dispostos a tudo para vivê-lo. Até mesmo magoar um ao outro. Na poesia dos dois, talvez a estrofe perfeita seja solitária e ímpar. E amor rime com dor.
"Único, diferente de tudo que se vê por aí...Leia!" - Tama Webber, autora de Easy', 2, '2013-06-07', 303, 'https://m.media-amazon.com/images/I/91eZao2mhTL._SY342_.jpg', 'Português', 'Romance'),
('Pausa', 'O amor pode não ser o bastante. Depois de superarem tragédias, proibições e desencontros, o relacionamento de Will e Layken enfrentam novos desafios. E talvez a poesia desse casal acabe num verso solitário... Sem direito a rima ou ritmo.

A ex-namorada de Will retorna, arrependida de ter deixado o rapaz. E está disposta a tudo para reconquistá-lo. Insegura, Layken começa a ler novas razões nos comportamentos do rapaz. E na sua insistência para adiar a “primeira vez” de ambos. Presos em uma ironia cruel do destino, eles precisam descobrir se o que sentem um pelo outro é verdadeiro ou se é apenas fruto da extraordinária situação que os uniu.

Será que é paixão? Ou apenas compaixão? Layken passa a questionar a base de seu relacionamento com Will. E ele precisa provar seu amor para uma garota que parece não conseguir parar de “esculpir abóboras”. Mas quando tudo parece resolvido, o casal se depara com um desafio ainda maior – e que talvez mude não só suas vidas, mas também as vidas de todos que dependem deles.', 2, '2013-11-07', 304, 'https://m.media-amazon.com/images/I/718la6Hn1rS._SY342_.jpg', 'Português', 'Romance'),
('Essa Garota', 'O amor de Will e Layken enfrentou — e venceu — proibições, impedimentos, ciúme, tragédia. Mas, agora casados, os dois se sentem seguros do sentimento que os une.
Lake e Will estão em plena lua de mel, encantados com o futuro que têm pela frente. Lake quer saber tudo que há para saber sobre o marido — mesmo quando este se torna reticente quanto a despertar memórias dolorosas. Pouco a pouco, Lake convence Will a desembaraçar os nós da própria história e, pela primeira vez, seus mais íntimos sentimentos e pensamentos ganham voz.
Sob a ótica de Will, revisitamos os bons e maus momentos. E conhecemos alguns fatos chocantes. O futuro de Will e Lake agora depende de como os dois lidarão com essas revelações.', 2, '2014-09-25', 319, 'https://m.media-amazon.com/images/I/91WkdA80scL._SY342_.jpg', 'Português', 'Romance'),
('Um Caso Perdido', 'Algumas vezes, a verdade pode ser impossível de digerir. Às vezes, só às vezes, a mentira parece ser a melhor saída. A melhor opção.

Aos 18 anos, Sky cataloga garotos como sabores de sorvete. Alguns são baunilha, outros, um pouco mais ousados. Mas nenhum a empolga. Aliás, o que ela gostaria mesmo de experimentar é o ensino médio, por mais que todas as suas referências sobre o assunto ― tiradas d seus amados e fiéis companheiros livros ― retratem a escola com as pinceladas de um inferno hormonal.

No entanto, Sky é forte e, principalmente, está preparada, apesar dos estranhos pesadelos que a perseguem, que lhe mostram uma garotinha sempre às lágrimas. Então, quando a mãe adotiva a libera para frequentar o último ano na escola local, ela pensa em tirar o máximo da experiência. Mesmo que sua melhor amiga, e única pessoa que conhece na instituição, tenha resolvido fazer intercâmbio na Itália.

Sky se vê sozinha na selva de nerds, atletas, populares... e com uma reputação nebulosa. Mas quando ela conhece Dean Holder, um rapaz cuja fama pode competir com a sua, Sky experimenta sensações de que jamais acreditou ser capaz. Ele a aterroriza e a encanta. Tudo isso com apenas um encontro.

Embora tente manter distância, Holder insiste em saber tudo sobre Sky, e, incapaz de negar a estranha conexão, ela finalmente se rende ― sem saber que o comportamento errático do garoto tem uma explicação, que testará o amor dos dois e a confiança de Sky nesse caso perdido pelo qual se apaixonou.

Agora, a verdade pode libertá-la. Ou simplesmente trucidá-la em Um caso perdido, uma história que retrata dois jovens com um passado devastador e um amor capaz de guiá-los numa jornada de descobertas... sobre vida, amor, confiança e, acima de tudo, o poder da verdade.', 2, '2022-03-28', 384, 'https://m.media-amazon.com/images/I/81BnNuSP4uL._SY342_.jpg', 'Português', 'Romance'),
('Sem Esperança', 'Da autora da série Slammed, a continuação do intenso Um caso perdido. Com a ajuda Dean Holder, Sky descobriu segredos familiares chocantes e reviveu lembranças e sentimentos que tinham deixado profundas cicatrizes. Mas toda história tem dois lados. E agora chegou a hora de descobrirmos a verdade a respeito dele.Assombrado pela culpa e pelo remorso por não ter conseguido salvar Hope nem Less, Holder desenvolveu uma personalidade agressiva e desconta sua raiva em qualquer um que tente desafiá-lo. Ele nunca imaginou que voltaria a ver Hope algum dia, e não acredita na própria sorte ao se deparar com ela depois de tantos anos. No entanto, Holder não poderia supor que o sofrimento seria ainda maior após o reencontro.Em Sem esperança, o jovem revela como os acontecimentos da infância de Sky afetaram sua vida e sua família, fazendo-o buscar a própria redenção na possibilidade de salvá-la. Mas é apenas amando Sky que ele enfim será capaz de se reconciliar consigo mesmo.', 2, '2015-01-16', 320, 'https://books.google.com.br/books/publisher/content?id=rhFyEAAAQBAJ&hl=pt-BR&pg=PA1&img=1&zoom=3&bul=1&sig=ACfU3U1krarr1h87FZuNQITKcnkg5Ahn6Q&w=1280', 'Português', 'Romance'),
('Em Busca de Cinderela e Em busca da perfeição', 'Six e Daniel acabaram de se conhecer no mais improvável dos lugares - um armário de vassouras -, e, apesar do desejo mútuo de matar umas aulas e evitar os chatos do colégio, os dois nunca se viram antes. A surpresa rapidamente cede espaço à conexão, uma afinidade repentina e irresistível que os une, conduzindo-os a uma história que tem tudo que os melhores contos de fada nos dizem: juras de amor, condições predefinidas, uma garota escapando nos momentos finais... como Cinderela, à meia-noite.

Tempos depois, eles se reencontram. E vão perceber, então, que a realidade nem sempre consegue manter a mesma magia dos contos de fada.

Mas quando um segredo imprevisível do passado de um deles vem à tona, o único apoio será um ao outro, e a força de seus sentimentos. Agora, a luz da vida real, em contraste com o escuro do armário onde os dois se encontraram pela primeira vez, é o que vai determinar os próximos passos de Six e Daniel, que, ainda desbravando essa nova realidade, precisarão segurar firme a mão um do outro, respirar fundo e abraçar todas as novas possibilidades.

Determinado a devolver a Six a peça que faltava para completar sua felicidade, Daniel embarca numa jornada dura, mas emocionante, repleta de expectativa e tensão, para provar que, no fim, o amor verdadeiro, mesmo à luz do dia, sempre vence.

Será que, após o labirinto repleto de imaginação à la Cinderella que Six e Daniel criaram, o verdadeiro amor vai mesmo falar mais alto?', 2, '2022-04-04', 256, 'https://m.media-amazon.com/images/I/91hnhxCy8LL._SY342_.jpg', 'Português', 'Novela'),
('Talvez Um Dia', 'Sydney acabou de completar 22 anos e já fez algo inédito em sua vida: socou a cara da ex-melhor amiga. Até hoje, ela não podia reclamar da vida. Um namorado atencioso, uma melhor amiga com quem dividia o apartamento... Tudo bem, até Sydney descobrir que as duas pessoas em quem mais confiava se pegavam quando ela não estava por perto. Até que foi um soco merecido.

Sydney encontra abrigo na casa de Ridge, um músico cujo talento ela vinha admirando há um tempo. Juntos, os dois descobrem um entrosamento fora do comum para compor e uma atração que só cresce com o tempo. O problema é que Ridge tem uma namorada, e a última coisa que Sydney precisa agora é se transformar numa traidora.', 2, '2016-04-19', 368, 'https://books.google.com.br/books/publisher/content?id=oqdbEQAAQBAJ&hl=pt-BR&pg=PP1&img=1&zoom=3&bul=1&sig=ACfU3U0GRslUXvZIbQF_Ss9itQjynHCrSQ&w=1280', 'Português', 'Romance'),
('Talvez Agora', 'Talvez agora - sequência de Talvez um dia - coloca em evidência a vida dos personagens apresentados no livro anterior após Ridge e Sydney terem, finalmente, oficializado seu relacionamento.

Agora que o relacionamento de Ridge com Maggie terminou, ele e Sydney estão explorando completamente essa nova liberdade de expressar seus sentimentos. No entanto, ele e Warren são o único suporte de Maggie... e devem aprender a lidar com a situação nesse novo contexto.

Enquanto isso, Maggie está desfrutando da nova etapa de sua vida, embora ainda sinta algum ressentimento por tudo o que aconteceu. Após tantos anos vivendo uma relação já estável - e morna - com Ridge, Maggie não consegue prever o que a aguarda. A insegurança com relação a sua doença, o desejo de independência e a ânsia de viver novas e empolgantes experiências É nesse meio que entra Jake, o rapaz que a ajudou a cumprir o primeiro item em sua lista de coisas para fazer: pular de paraquedas. Ele está tão interessado nela quanto ela nele, mas Maggie arriscará viver um novo relacionamento e deixar o passado para trás?

Por outro lado, Sydney, ao finalmente engatar a relação com Ridge, se vê realizada... Ridge representa tudo o que sempre sonhou em alguém e a química entre os dois é evidente. No entanto, a constante proximidade de Maggie a preocupa... E, mais uma vez, ela deverá ser forte para lidar com o assunto com o equilíbrio e maturidade que ele exige.

Embalado por uma atmosfera musical e tratando de temas como amizade, lealdade e, principalmente, o real significado de união, Colleen Hoover retorna com a continuação de uma - ou várias? - história de amor, situações-limite e, principalmente, personagens perfeitamente imperfeitos. Talvez agora é contada não só sob um, mas vários prismas - e, como um bom românce, não podem faltar as boas doses de risos e as lágrimas.', 2, '2020-11-02', 352, 'https://books.google.com.br/books/publisher/content?id=rKdbEQAAQBAJ&hl=pt-BR&pg=PP1&img=1&zoom=3&bul=1&sig=ACfU3U2jCcjSzdXVVoXtDpTCCzZeiC8rzw&w=1280', 'Português', 'Romance'),
('É Assim Que Acaba', 'Em É assim que acaba, Colleen Hoover nos apresenta Lily, uma jovem que se mudou de uma cidadezinha do Maine para Boston, se formou em marketing e abriu a própria floricultura. E é em um dos terraços de Boston que ela conhece Ryle, um neurocirurgião confiante, teimoso e talvez até um pouco arrogante, com uma grande aversão a relacionamentos, mas que se sente muito atraído por ela.

Quando os dois se apaixonam, Lily se vê no meio de um relacionamento turbulento que não é o que ela esperava. Mas será que ela conseguirá enxergar isso, por mais doloroso que seja?

É assim que acaba é uma narrativa poderosa sobre a força necessária para fazer as escolhas certas nas situações mais difíceis. Considerada a obra mais pessoal de Hoover, o livro aborda sem medo alguns tabus da sociedade para explorar a complexidade das relações tóxicas, e como o amor e o abuso muitas vezes coexistem em uma confusão de sentimentos.', 2, '2018-01-18', 368, 'https://m.media-amazon.com/images/I/51i7kH+rh9L._SY445_SX342_.jpg', 'Português', 'Romance'),
('É Assim Que Começa', 'Lily Bloom continua administrando uma floricultura. Seu ex-marido abusivo, Ryle Kincaid, ainda é um    cirurgião. Mas agora os dois estão oficialmente divorciados e dividem a guarda da filha, Emerson.

Quando Lily esbarra em Atlas ― com quem não fala há quase dois anos ―, parece que finalmente chegou o momento de retomar o relacionamento da adolescência, já que ele também está solteiro e parece retribuir os sentimentos de Lily. Mas apesar de divorciada, Lily não está exatamente livre de Ryle. Culpando Atlas pelo fim de seu casamento, Ryle não está nada disposto a aceitar o novo relacionamento de Lily, ainda mais com Atlas, o último homem que aceitaria ver perto de sua filha e da ex-esposa.

Alternando entre os pontos de vista de Atlas e Lily, É assim que começa retoma logo após o epílogo de É assim que acaba. Revelando mais sobre o passado de Atlas e acompanhando a jornada de Lily para abraçar a sua segunda chance, no amor enquanto lida com um ex-marido ciumento, É assim que começa prova que ninguém entrega uma leitura mais emocionante do que Colleen Hoover.', 2, '2022-10-18', 336, 'https://m.media-amazon.com/images/I/81Izv2GRWoL._SY342_.jpg', 'Português', 'Romance'),
('O Lado Feio do Amor', 'Quando Tate Collins se muda para o apartamento do irmão, em São Francisco, pronta a se dedicar ao mestrado em enfermagem, não imagina estar prestes a conhecer o lado feio do amor. Um relacionamento em que companheirismo e cumplicidade não são prioridades. E o sexo parece ser o único objetivo.

Mas Miles Archer, piloto de avião, vizinho e melhor amigo de Corbin Collins, sabe ser persuasivo. E muito. Apesar de reservado, e da armadura emocional que carrega para não deixar estranhos se aproximarem e descobrirem nada a seu respeito, ele instantaneamente seduz Tate com seu jeito misterioso e físico perfeito. Mas sua beleza esconde um passado repleto de dor.

O que os dois sentem não é amor à primeira vista, mas uma atração incontrolável. Em pouco tempo não conseguem mais resistir e se entregam ao desejo. Miles, no entanto, se recusa a abaixar as barreiras que construiu em volta de si mesmo e impõe duas regras: sem perguntas sobre o passado e sem esperanças para o futuro. Será apenas uma relação casual e nada mais; nenhum dos dois quer se envolver.

Eles têm a sintonia perfeita. Quando estão juntos, Tate se entrega sem pensar nas consequências, no que seu irmão faria se descobrisse aquele romance proibido acontecendo embaixo de seu nariz. Mas a verdade é que ela não pode resistir a Miles. E quando se dá conta, já ultrapassou todos os limites... Tate prometeu não se apaixonar. Mas vai descobrir que nenhuma regra é capaz de controlar o amor e o desejo.', 2, '2015-06-23', 336, 'https://m.media-amazon.com/images/I/51RT++oGS6L._SY445_SX342_.jpg', 'Português', 'Romance'),
('Confesse', 'Auburn Reed perdeu tudo que era importante para ela. Na luta para reconstruir a vida destruída, ela se mantém focada em seus objetivos e não pode cometer nenhum erro. Mas ao entrar num estúdio de arte em Dallas à procura de emprego, Auburn não esperava encontrar o enigmático Owen Gentry, que lhe desperta uma intensa atração.

Pela primeira vez, Auburn se vê correndo riscos e deixa o coração falar mais alto, até descobrir que Owen está encobrindo um enorme segredo. A importância do passado do artista ameaça acabar com tudo que Auburn mais ama, e a única maneira de reconstituir sua vida é mantendo Owen afastado.

Para salvar o relacionamento, tudo que Owen precisa fazer é confessar. Mas talvez a confissão seja bem mais destruidora que o próprio pecado.

Com seu estilo magnífico e excepcional, em Confesse, Colleen Hoover conta uma história extremamente tocante, sobre como o amor verdadeiro e a família representam laços que nunca devem ser desfeitos.', 2, '2017-06-08', 320, 'https://m.media-amazon.com/images/I/51pY8SSBSGL._SY445_SX342_.jpg', 'Português', 'Romance'),
('Novembro, 9', 'Apesar de ter apenas 18 anos, Fallon já passou por muita coisa. Sobreviveu a um incêndio que a deixou desfigurada, e viu a carreira de atriz desmoronar por conta das cicatrizes. Agora, no aniversário do fatídico acidente, ela finalmente se sente pronta para sair de Los Angeles e recomeçar a vida em Nova York.

No almoço de despedida com o pai, bem na véspera da mudança, Fallon conhece Ben, um aspirante a escritor. A atração entre os dois faz com que passem o dia inteiro juntos, mas a partida iminente de Fallon os impede de viver esse amor. Decididos a vencer o destino, fazem uma promessa: se encontrar todo ano nessa mesma data.

Ao longo do tempo, muitas coisas mudam na vida dos dois, mas o ritual dos encontros e sua história de amor viram enredo do livro de Ben. E, quando parece que o destino finalmente conspira para que fiquem juntos, Fallon descobre algo que a faz questionar as motivações do homem por quem está apaixonada. Será que ela não passa de mais uma personagem na trama de Ben?', 2, '2016-09-06', 352, 'https://m.media-amazon.com/images/I/91YbRs+x+cL._SY342_.jpg', 'Português', 'Romance'),
('Tarde Demais', 'Para proteger o irmão, Sloan foi ao inferno e fez dele seu lar. Ela está presa em um relacionamento com Asa Jackson, um perigoso traficante, e quanto mais os dias passam, mais parece impossível enxergar uma saída. Imersa em uma casa incontrolável que mais parece um quartel general, rodeada por homens que ela teme e sem um minuto de silêncio, também parece impossível encontrar qualquer motivo para se sentir bem. Até Carter surgir em sua vida.

Sloan é a melhor coisa que já aconteceu a Asa. E se você perguntasse ao rapaz, ele diria que também é a melhor coisa que já aconteceu a Sloan. Apesar de a garota não aprovar seu arriscado estilo de vida, Asa faz o que é preciso para permanecer sempre um passo a frente em seu negócio e proteger sua garota. Até Carter surgir em sua vida.

A chegada de Carter pode afetar o frágil equilíbrio que Sloan lutou tanto para conquistar, mas também pode significar sua única saída de uma situação que está ficando insustentável.', 2, '2018-06-04', 384, 'https://m.media-amazon.com/images/I/81NqyuC2M3L._SY342_.jpg', 'Português', 'Romance'),
('As Mil Partes do Meu Coração', 'Merit Voss está cansada de guardar os segredos de sua família e decide que chegou a hora de desaparecer. Mas antes de sumir do mapa, ela vai revelar um por um, tudo que a família vem guardando por anos.

A cerca branca ao redor da sua casa é a única coisa normal na vida de Merit. Parte de uma família peculiar e cheia de segredos, ela mora em uma antiga igreja, batizada de Dólar Voss. A mãe, curada de um câncer, mora no porão, e o pai e o restante da família, no andar de cima. Isso inclui sua nova esposa, a ex-enfermeira da ex-mulher, o pequeno Moby, fruto desse relacionamento, o irmão mais velho, Utah, e a gêmea idêntica de Merit, Honor. E, como se a casa não tivesse cheia o bastante, ainda chegam o excêntrico Luck e o misterioso Sagan. Mas Merit sente que é o oposto de todos ali.

Mas seu plano de revelar a verdade não sai como o esperado e ela deve decidir se pode dar uma segunda chance não apenas à sua família, mas também a si mesma. As mil partes do meu coração mostra que nunca é tarde para perdoar e que não existe família perfeita, por mais branca que seja a cerca.', 2, '2018-11-05', 336, 'https://m.media-amazon.com/images/I/814pUv-EGbL._SY342_.jpg', 'Português', 'Romance'),
('Todas as Suas (Im)Perfeições', 'Todas as suas imperfeições narra a história de Quinn e Graham. Eles se conhecem no pior dia de suas vidas; ela chega mais cedo de uma viagem para surpreender o noivo, ele testemunha a traição da namorada. E é assim que ambos acabam no corredor de um prédio, trocando confidências, biscoitos da sorte e palavras de conforto.

Fim da dança... se o destino não tivesse outros planos para os dois. Meses mais tarde, os acordes tocam para o casal mais uma vez e eles se reencontram. Graham está convencido de que são almas gêmeas. Quinn jamais se sentiu dessa forma antes. A intensidade do sentimento os assusta, mas eles mergulham de cabeça mesmo assim.

O casamento é tudo o que sonhavam, a parceria perfeita. Mesmo nos momentos difíceis, sabem que podem contar com o outro. Nenhum deles desiste do amor que sentem. Até que a primeira nota dissonante abala a sinfonia do casal. Até que Quinn parece estar disposta a trocar tudo o que é pela única coisa que não consegue ser: mãe.

A luta do casal por um filho arrisca os alicerces da relação. Quinn não pode engravidar. Graham não é um candidato para adoção por conta de um erro do passado. O impasse os deixa parados no salão, no silêncio. A orquestra está em suspenso. Os dois parecem surdos para a música do amor.', 2, '2019-06-24', 304, 'https://m.media-amazon.com/images/I/81Vhnel+xxL._SY342_.jpg', 'Português', 'Romance'),
('Verity', 'Verity Crawford é a autora best-seller por trás de uma série de sucesso. Ela está no auge de sua carreira, aclamada pela crítica e pelo público, no entanto, um súbito e terrível acidente acaba interrompendo suas atividades, deixando-a sem condições de concluir a história... E é nessa complexa circunstância que surge Lowen Ashleigh, uma escritora à beira da falência convidada a escrever, sob um pseudônimo, os três livros restantes da já consolidada série.

Para que consiga entender melhor o processo criativo de Verity com relação aos livros publicados e, ainda, tentar descobrir seus possíveis planos para os próximos, Lowen decide passar alguns dias na casa dos Crawford, imersa no caótico escritório de Verity - e, lá, encontra uma espécie de autobiografia onde a escritora narra os fatos acontecidos desde o dia em que conhece Jeremy, seu marido, até os instantes imediatamente anteriores a seu acidente - incluindo sua perspectiva sobre as tragédias ocorridas às filhas do casal.

Quanto mais o tempo passa, mais Lowen se percebe envolvida em uma confusa rede de mentiras e segredos, e, lentamente, adquire sua própria posição no jogo psicológico que rodeia aquela casa. Emocional e fisicamente atraída por Jeremy, ela precisa decidir: expor uma versão que nem ele conhece sobre a própria esposa ou manter o sigilo dos escritos de Verity?

Em Verity, Colleen Hoover se afasta do estilo que a consagrou, os romances, para se aventurar em um suspense psicológico que deixou todo o mercado editorial sem palavras de tão avassalador. Através de uma narrativa perturbadora e chocante, Verity explora o lado mais sombrio das relações humanas deixando uma surpresinha chocante no final.', 2, '2020-03-09', 320, 'https://m.media-amazon.com/images/I/91SDZ2eUj+L._SY342_.jpg', 'Português', 'Thriller'),
('Se Não Fosse Você', 'Morgan e Clara Grant são mãe e filha, e aparentemente não têm nada em comum.

Morgan engravidou muito nova, com dezesseis anos, e está determinada a evitar que sua filha passe pelas mesmas dificuldades que enfrentou. Colocando sempre a família em primeiro plano, Morgan deixou os próprios sonhos de lado para dedicar-se à filha e ao marido.

Clara, por sua vez, não quer seguir os passos da mãe - ela não consegue enxergar nada de espontâneo na personalidade de Morgan. No auge dos seus dezesseis anos, seu maior desejo é ir para a universidade estudar teatro, mesmo que os pais não incentivem a carreira.

Com personalidades incompatíveis e objetivos divergentes, a convivência entre Morgan e Clara está cada dia mais insustentável. A única pessoa capaz de criar um ambiente de paz é Chris - marido de Morgan, pai de Clara, o porto seguro da família. Mas essa paz é quebrada após um trágico acidente que muda completamente a vida das duas.

Enquanto Morgan luta para reconstruir tudo que desabou ao seu redor e encontra conforto na última pessoa que esperava, Clara só aumenta sua lista de rebeldias. Com o passar dos dias, novos segredos, ressentimentos e mal-entendidos fazem com que mãe e filha se afastem ainda mais... e a distância aumenta tanto ao ponto de uma reaproximação se tornar improvável. Depois de tanto tempo distantes e com muita coisa não dita, será que ainda há chances de que tudo fique bem?', 2, '2020-10-22', 400, 'https://m.media-amazon.com/images/I/41X3LFq3O8L._SY445_SX342_.jpg', 'Português', 'Romance'),
('Até o Verão Terminar', 'Filha de uma mãe problemática e um pai ausente, Beyah precisou aprender a se virar sozinha desde pequena. Sua vida foi trilhada com muitas decepeções. Mas ela está prestes a mudar a sua sorte graças a si mesma, e a mais ninguém, por conta da bolsa de estudos que ganhou para estudar em uma boa universidade. Apenas dois curtos meses separam o tão sonhado futuro do passado que tanto deseja deixar para trás. Mas uma reviravolta faz Beyah perder até mesmo a casa em que mora.

Sem opção, ela recorre ao último recurso que tem e precisará passar o resto do verão na casa de praia do pai que mal conhece, da nova esposa e da filha dela que nem ao menos ouvira falar. O plano de Beyah é se manter quase invisível até poder ir para a faculdade. Mas o vizinho da casa ao lado torna tudo muito mais complicado. Afinal, é difícil ignorar o rico, bonito e misterioso Samson.

Os dois parecem não ter nada em comum. Ela viveu uma vida sem dinheiro ou amor enquanto ele tem uma família rica e privilegiada. Mas no olhar dele vive uma tristeza que apenas quem também a carrega dentro de si consegue reconhecer. E isso os torna irresístiveis um para o outro. Sem terem como fugir da atração que sentem, Beyah e Samson resolvem se dar uma chance, mas apenas até o verão terminar.', 2, '2021-08-30', 336, 'https://m.media-amazon.com/images/I/51ccTKC7y1L._SY445_SX342_.jpg', 'Português', 'Romance'),
('Layla', 'Quando Leeds conhece Layla, ele está convencido de que passará o resto de sua vida com ela... Ela é espontânea, divertida, e a vida ao seu lado é fácil e tranquila. Até que um ataque inesperado faz com que Layla precise lutar por sua vida. Após semanas no hospital, Layla se recupera fisicamente, mas as cicatrizes mentais e emocionais alteraram significativamente a essência e personalidade da mulher por quem Leeds se apaixonou.

Com o objetivo de colocar o relacionamento dos dois de volta nos trilhos e tentar fazer com que os dois voltem a ser o que eram antes da tragédia, Leeds leva Layla para a pousada onde se conheceram, na esperança de que o lugar desperte em Layla os vívidos sentimentos de antes, no início da relação dos dois. Mas, assim que chegam ao lugar, situações bizarras começam a acontecer, uma após a outra, e o comportamento de Layla sofre uma mudança ainda mais drástica. Confuso e sentindo-se cada vez mais solitário, Leeds passa a investigar o porquê dos eventos e, sem que realmente perceba, se vê, de repente, obcecado.

A cada dia mais distante de Layla, Leeds encontra consolo em Willow – outra hóspede da pousada onde estão instalados. Os dois estabelecem uma rápida e intensa conexão, e Leeds começa a perceber, atônito, que prefere a companhia da mulher à de Layla. No entanto, à medida que sua curiosidade por Willow cresce, aumentam também os riscos à segurança e bem-estar de Layla.

Rapidamente, Leeds percebe que precisa fazer uma escolha, depressa.

No entanto, uma decisão errada pode prejudicar a todos.', 2, '2021-04-19', 368, 'https://m.media-amazon.com/images/I/91-M+6ZOjuL._SY342_.jpg', 'Português', 'Romance'),
('Uma Segunda Chance', 'Depois de passar cinco anos na prisão após um trágico acidente, Kenna Rowan retorna à cidade onde tudo deu errado, esperando poder viver ao lado da filha pequena. Mas agora os abismos criados por Kenna parecem instransponíveis. Todos ao redor da sua filha estão determinados a rejeitar Kenna, não importa o quanto ela tente provar que mudou.

A única pessoa que não a ignora é Ledger Ward, dono de um bar e um dos poucos elos que ainda lhe resta com a criança. Porém, se os moradores da cidade desconfiarem de que Ledger vem se tornando importante na vida de Kenna, ambos correrão o risco de perder tudo o que mais importa para eles.

Com pontos de vista alternados entre os dois personagens, Uma segunda chance explora o quanto julgamentos apressados baseados em informações que podem não ser verdadeiras tem o potencial de acabar com a vida das pessoas.', 2, '2022-05-31', 394, 'https://m.media-amazon.com/images/I/51fMZPtkW+L._SY445_SX342_.jpg', 'Português', 'Romance');

-- Hannah Nicole Maehrer – única obra disponível
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Assistente do Vilão', 'Com uma família para sustentar, Evie Sage precisa desesperadamente de um trabalho. Então, quando um esbarrão acidental com o Vilão mais famoso de Rennedawn resulta em uma oferta de emprego, ela aceita sem pensar duas vezes.

Alegre, fofa e divertida, Evie sabe que esse cargo não é bem o seu perfil, mas sabe também que nenhum trabalho é perfeito. O que ela jamais esperaria era desenvolver uma queda por seu chefe aterrorizante, temperamental e inegavelmente gato.

Quando finalmente se acostuma com as diversas cabeças decepadas penduradas no teto e com o barulho estranho de globos oculares errantes sendo esmagados sob seus pés, Evie começa a suspeitar de que algo estranho pode estar acontecendo no reino: alguém quer acabar com o Vilão e com todo o seu império nefasto.

Agora, além de se esforçar para não babar pelo seu chefe, ela também precisa descobrir quem está tentando sabotar seu trabalho e fazer de tudo para impedi-lo. Afinal, não é fácil encontrar um bom emprego.', 3, '2024-01-08', 512, 'https://m.media-amazon.com/images/I/81DkKVIavBL._SY342_.jpg', 'Português', 'Fantasia Romântica'),
('Aprendiz do Vilão', 'Evie Sage nunca esteve tão feliz de ser a assistente do Vilão. Quem poderia imaginar que trabalhar para um senhor do mal ridiculamente bonito (shhh, é ruim pra imagem dele) seria tão gratificante? Ainda assim, os negócios do mal são muito cansativos, as forças do bem são irritantemente persistentes, e o chefe antes mencionado está... hm... fora do escritório.

Mas Rennedawn está afundado em problemas e tudo ― até o Reinaldo ― aponta para uma catástrofe. Algo peculiar está acontecendo com a magia do reino e fez o castelo do Vilão vulnerável aos inimigos... inclusive seu maior rival, o rei.

Em Aprendiz do Vilão , Evie precisará aprender novas habilidades para confrontar seu maior desafio: proteger o lar do Vilão, todos os seus trabalhos nefastos e, talvez (desde que ninguém descubra), o reino inteiro. Sem pressão, Evie!

Traição. Manusear uma adaga. Conspirar com o inimigo. Tudo isso é tão... tão... maravilhosamente divertido. Mas o que acontece quando a assistente do Vilão está pronta para se tornar sua aprendiz?', 3, '2024-08-29', 544, 'https://m.media-amazon.com/images/I/81Q4iEvgkSL._SY342_.jpg', 'Português', 'Fantasia Romântica'),
('Aliada do Vilão', 'Evie Sage jamais teve a intenção de se tornar o braço direito do vilão mais temido do reino. Num minuto, ela estava se candidatando a uma vaga de nível básico que prometia “pouca papelada e decapitações ocasionais”, e no seguinte, já estava afundada até o pescoço em caos mágico, planos de assassinato e uma quedinha totalmente inapropriada por seu chefe carrancudo ― dono de um maxilar esculpido e energia de catástrofe ambulante.

Entre uma profecia mágica prestes a ruir, assassinos surgindo na sala de descanso e uma quantidade altamente suspeita de sapos usando coroas, Evie precisa dar um jeito de sobreviver a esse emprego ― sem implodir o reino. Ou a própria dignidade, que já está por um fio... bem sarcástico. Estar ao lado do mal nunca fez parte dos seus planos. Mas, pensando bem... também não fazia parte se apaixonar pelo Vilão.

Em Aliada do Vilão, Evie vai descobrir que, às vezes, ser cúmplice do mal é só o começo ― porque, quando o reino inteiro ameaça desmoronar (e seu chefe sumir de novo, só para variar), ela precisará decidir até onde vai sua lealdade… e seu coração. Na trilogia Assistente do Vilão, Hannah Nicole Maehrer mistura contos de fadas, humor afiado e caos corporativo em uma fantasia romântica irresistível ― provando, de uma vez por todas, que príncipes são ótimos… mas vilões são ainda melhores.', 3, '2025-08-25', 608, 'https://m.media-amazon.com/images/I/81SKr7i3EHL._SY342_.jpg', 'Português', 'Fantasia Romântica');


-- Agatha Christie – 5 clássicos traduzidos
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Assassinato no Expresso do Oriente', 'Em meio a uma viagem, Hercule Poirot é surpreendido por um telegrama solicitando seu retorno a Londres. Logo o famoso detetive belga embarca no Expresso do Oriente, que está inesperadamente cheio para aquela época do ano. Pouco após a meia-noite, o excesso de neve nos trilhos obriga o trem a parar, e na manhã seguinte, o corpo de um dos passageiros é encontrado, golpeado por múltiplas facadas. Isolados e com um assassino entre eles, a única solução de Poirot é iniciar uma investigação, reunindo todas as pistas e os suspeitos para chegar à conclusão de quem é o criminoso ― antes que ele faça mais uma vítima. 

Um clássico da literatura de mistério, O assassinato no expresso do oriente é parte das novas edições de luxo de Agatha Christie da HarperCollins, com novas traduções, capa dura e detalhes sobre a obra no final do livro. Você vai se surpreender com cada reviravolta.', 4, '1934-01-01', 240, 'https://m.media-amazon.com/images/I/81Zp6MFxIDL._SY342_.jpg', 'Português', 'Romance Policial'),
('O Assassinato de Roger Ackroyd', 'Em uma noite de setembro, o milionário Roger Ackroyd é encontrado morto, esfaqueado com uma adaga tunisiana – objeto raro de sua coleção particular – no quarto da mansão Fernly Park na pacata vila de King’s Abbott. A morte do fidalgo industrial é a terceira de uma misteriosa sequência de crimes, iniciada com a de Ashley Ferrars, que pode ter sido causada ou por uma ingestão acidental de soníferos ou envenenamento articulado por sua esposa – esta, aliás, completa a sequência de mortes, num provável suicídio.

Os três crimes em série chamam a atenção da velha Caroline Sheppard, irmã do dr. Sheppard, médico da cidade e narrador da história. Suspeitando de que haja uma relação entre as mortes, dada a proximidade de miss Ferrars com o também viúvo Roger Ackroyd, Caroline pede a ajuda do então aposentado detetive belga Hercule Poirot, que passava suas merecidas férias na vila.

Ameaças, chantagens, vícios, heranças, obsessões amorosas e uma carta reveladora deixada por miss Ferrars compõem o cenário desta surpreendente trama, cujo transcorrer elenca novos suspeitos a todo instante, exigindo a habitual perspicácia do detetive Poirot em seu retorno ao mundo das investigações. O assassinato de Roger Ackroyd é um dos mais famosos romances policiais da rainha do crime.', 4, '1926-06-01', 296, 'https://m.media-amazon.com/images/I/A1YT3xGKJFL._SY342_.jpg', 'Português', 'Romance Policial'),
('E Não Sobrou Nenhum', 'Uma ilha misteriosa, um poema infantil, dez soldadinhos de porcelana e muito suspense são os ingredientes com que Agatha Christie constrói seu romance mais importante. Na ilha do Soldado, antiga propriedade de um milionário norte-americano, dez pessoas sem nenhuma ligação aparente são confrontadas por uma voz misteriosa com fatos marcantes de seus passados.

Convidados pelo misterioso mr. Owen, nenhum dos presentes tem muita certeza de por que estão ali, a despeito de conjecturas pouco convincentes que os leva a crer que passariam um agradável período de descanso em mordomia. Entretanto, já na primeira noite, o mistério e o suspense se abatem sobre eles e, num instante, todos são suspeitos, todos são vítimas e todos são culpados.

É neste clima de tensão e desconforto que as mortes inexplicáveis começam e, sem comunicação com o continente devido a uma forte tempestade, a estadia transforma-se em um pesadelo. Todos se perguntam: quem é o misterioso anfitrião, mr. Owen? Existe mais alguém na ilha? O assassino pode ser um dos convidados? Que mente ardilosa teria preparado um crime tão complexo? E, sobretudo, por quê?

São essas e outras perguntas que o leitor será desafiado a resolver neste fabuloso romance de Agatha Christie, que envolve os espíritos mais perspicazes num complexo emaranhado de situações, lembranças e acusações na busca deste sagaz assassino. Medo, confinamento e angústia: que o leitor descubra por si mesmo porque E não sobrou nenhum foi eleito o melhor romance policial de todos os tempos.', 4, '1939-11-06', 400, 'https://m.media-amazon.com/images/I/71u9uqTYBcL._SY342_.jpg', 'Português', 'Romance Policial'),
('Morte no Nilo',  'A tranquilidade de um cruzeiro de luxo pelo Nilo chega ao fim quando o corpo de Linnet Doyle, uma bela e jovem milionária, é descoberto em sua cabine.

Porém, para azar do autor do crime, o brilhante detetive Hercule Poirot está a bordo. Ele logo descobre que cada passageiro é suspeito, pois todos tinham motivos para tirar a vida de Linnet. Em um rio de mentiras, Poirot precisa descobrir a verdade sobre esse estranho assassinato.', 4, '1937-11-01', 320, 'https://m.media-amazon.com/images/I/71Jt2eJxI6L._SY342_.jpg', 'Português', 'Romance Policial'),
('O Caso dos Dez Negrinhos', 'E não sobrou nenhum (anteriormente publicado como O caso dos dez negrinhos) é talvez o maior clássico moderno das histórias de mistério. Dez pessoas diferentes recebem um mesmo convite para passar um fim de semana na remota Ilha do Soldado. Na primeira noite, após o jantar, elas ouvem uma voz acusando cada uma de um crime oculto cometido no passado. Mortes inexplicáveis e inescapáveis então se sucedem. E a cada convidado eliminado, também desaparece um dos soldadinhos que enfeitam a mesa de jantar. Quem poderia saber dos dez crimes distintos? Quem se arvoraria em seu juiz e carrasco? Como escapar da próxima execução?', 4, '1939-00-00', 256, 'https://m.media-amazon.com/images/I/41Z7JLCp57L._UF1000,1000_QL80_.jpg', 'Português', 'Romance Policial');

-- John Green – 5 traduções
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('A Culpa é das Estrelas', 'Hazel é uma paciente terminal. Ainda que, por um milagre da medicina, seu tumor tenha encolhido bastante — o que lhe dá a promessa de viver mais alguns anos —, o último capítulo de sua história foi escrito no momento do diagnóstico.

Mas em todo bom enredo há uma reviravolta, e a de Hazel se chama Augustus Waters, um garoto bonito que certo dia aparece no Grupo de Apoio a Crianças com Câncer. Juntos, os dois vão preencher o pequeno infinito das páginas em branco de suas vidas.', 5, '2012-11-13', 313, 'https://m.media-amazon.com/images/I/811ivBP1rsL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('Quem é Você, Alasca?', 'Miles Halter estava em busca de um Grande Talvez. Alasca Young queria saber como sair do labirinto. Suas vidas se colidiram na Escola Culver Creek, e nada nunca mais foi o mesmo.

Mas antes, um breve resumo de como tudo aconteceu:

Miles Halter vivia uma vidinha sem graça e sem muitas emoções (ou amizades) na Flórida. Ele tinha um gosto peculiar: memorizar as últimas palavras de grandes personalidades da história. Uma dessas personalidades, François Rabelais, um escritor do século XV, disse no leito de morte que ia em “busca de um Grande Talvez”. Para não ter que esperar a morte para encontrar seu Grande Talvez, Miles decide fazer as malas e partir. Ele vai para a Escola Culver Creek, um internato no ensolarado Alabama.

Lá, ele conhece Alasca Young. Ela tem em seu livro preferido, O general em seu labirinto , de Gabriel García Márquez, a pergunta para a qual busca incessantemente uma resposta: “Como vou sair desse labirinto?” Inteligente, engraçada, louca e incrivelmente sexy, Alasca vai arrastar Miles para seu labirinto e catapultá-lo sem misericórdia na direção do Grande Talvez. Miles se apaixona por Alasca, mesmo sem entendê-la, mesmo tentando sem sucesso decifrar o enigma indecifrável de seus olhos verde-esmeralda.', 5, '2005-03-03', 336, 'https://m.media-amazon.com/images/I/715+3WHXWyL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('Cidades de Papel', 'Quentin Jacobsen tem uma paixão platônica pela magnífica vizinha e colega de escola Margo Roth Spiegelman. Até que em um cinco de maio que poderia ter sido outro dia qualquer, ela invade sua vida pela janela de seu quarto, com a cara pintada e vestida de ninja, convocando-o a fazer parte de um engenhoso plano de vingança. E ele, é claro, aceita.

Assim que a noite de aventuras acaba e um novo dia se inicia, Q vai para a escola e então descobre que o paradeiro da sempre enigmática Margo é agora um mistério. No entanto, ele logo encontra pistas e começa a segui-las. Impelido em direção a um caminho tortuoso, quanto mais Q se aproxima de Margo, mais se distancia da imagem da garota que ele achava que conhecia.', 5, '2008-10-16', 368, 'https://m.media-amazon.com/images/I/61otKosI+OL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('Tartarugas até lá embaixo', 'A história acompanha a jornada de Aza Holmes, uma menina de 16 anos que sai em busca de um bilionário misteriosamente desaparecido – quem encontrá-lo receberá uma polpuda recompensa em dinheiro – enquanto tenta lidar com o próprio transtorno obsessivo-compulsivo (TOC).

Repleto de referências da vida do autor – entre elas, a tão marcada paixão pela cultura pop e o TOC, distúrbio mental que o afeta desde a infância –, Tartarugas até lá embaixo tem tudo o que fez de John Green um dos mais queridos autores contemporâneos. Um livro incrível, recheado de frases sublinháveis, que fala de amizades duradouras e reencontros inesperados, fan-fics de Star Wars e – por que não? – peculiares répteis neozelandeses.', 5, '2017-10-10', 272, 'https://m.media-amazon.com/images/I/81jO4GHLmuL._SY342_.jpg', 'Português', 'Ficção Juvenil'),
('O Teorema Katherine', 'Se o assunto é relacionamento, o tipo de garota de Colin Singleton tem nome: Katherine. E, em se tratando de Colin e Katherines, o desfecho é sempre o mesmo: ele leva o fora. Já aconteceu muito. Dezenove vezes, para ser exato.

Após o mais recente e traumático pé na bunda, o Colin que só namora Katherines resolve cair na estrada. Dirigindo o Rabecão de Satã, com seu caderninho de anotações no bolso e o melhor amigo no carona, o ex-garoto prodígio, viciado em anagramas e PhD em levar o fora, descobre sua verdadeira missão: elaborar e comprovar o Teorema Fundamental da Previsibilidade das Katherines, que tornará possível antever, através da linguagem universal da matemática, o desfecho de qualquer relacionamento antes mesmo que as duas pessoas se conheçam.

Uma descoberta que vai entrar para a história, vai vingar séculos de injusta vantagem entre Terminantes e Terminados e, enfim, elevará Colin Singleton diretamente ao distinto posto de gênio da humanidade. Também, é claro, vai ajudá-lo a reconquistar sua garota. Ou, pelo menos, é isso o que ele espera.', 5, '2006-09-21', 304, 'https://m.media-amazon.com/images/I/41N5emPrK6L._SY445_SX342_.jpg', 'Português', 'Ficção Juvenil');

-- Paula Pimenta – 5 livros/populares brasileiros
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Fazendo Meu Filme','Conta a história de Fani, uma adolescente apaixonada por cinema que vive os dilemas da juventude, amizades, amores e descobertas.', 6, '2009-10-08', 336, 'https://m.media-amazon.com/images/I/813Xz4-o-gL._UF1000,1000_QL80_.jpg', 'Português', 'Romance Juvenil'),

('Fazendo Meu Filme 2','Continuação da trajetória de Fani, agora enfrentando os desafios de um intercâmbio no exterior, amizades à distância e novos sentimentos.', 6, '2009-10-08', 424, 'https://m.media-amazon.com/images/I/81PYZBeaNfL._UF1000,1000_QL80_.jpg', 'Português', 'Romance Juvenil'),

('Minha Vida Fora de Série','Narra a vida de Priscila, uma jovem que se muda para outra cidade e precisa se adaptar a novos amigos, paixões e situações da adolescência.', 6, '2011-08-31', 408, 'https://m.media-amazon.com/images/I/81LY6nLXdmL.jpg', 'Português', 'Romance Juvenil'),

('Minha Vida Fora de Série 2', 'Continuação da história de Priscila, aprofundando seus relacionamentos, descobertas pessoais e conflitos típicos da juventude.', 6, '2013-06-16', 420, 'https://m.media-amazon.com/images/I/51iqQ5A8LBL._SY445_SX342_.jpg', 'Português', 'Romance Juvenil');


-- Stephen King – 5 obras traduzidas
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Carrie – A Estranha', 'Primeiro romance de Stephen King, conta a história de Carrie White, uma adolescente tímida com poderes telecinéticos que enfrenta bullying na escola e a opressão da mãe fanática religiosa, culminando em uma tragédia.', 7, '1974-04-05', 208, 'https://m.media-amazon.com/images/I/91gl1Ab8wCL._SY342_.jpg', 'Português', 'Terror'),

('O Iluminado', 'Jack Torrance, um escritor em crise, aceita ser caseiro de um hotel isolado nas montanhas. Junto com a esposa e o filho, enfrenta forças sobrenaturais que despertam sua loucura.', 7, '1977-01-28', 507, 'https://m.media-amazon.com/images/I/41zaEFaE+SL._SY445_SX342_.jpg', 'Português', 'Terror'),

('A Dança da Morte', 'Após a liberação acidental de um vírus mortal, a população mundial é devastada. Os sobreviventes se dividem em dois grupos e enfrentam uma batalha entre o bem e o mal.', 7, '1978-09-01', 1248, 'https://m.media-amazon.com/images/I/51Wpx+aPtZS._SY445_SX342_.jpg', 'Português', 'Ficção Apocalíptica'),

('It – A Coisa', 'Um grupo de amigos enfrenta uma entidade maligna que assume a forma de um palhaço chamado Pennywise, aterrorizando a cidade de Derry por décadas.', 7, '1986-09-15', 1104, 'https://m.media-amazon.com/images/I/51z0s3GcvwL._SY445_SX342_.jpg', 'Português', 'Terror'),

('Misery','O escritor Paul Sheldon sofre um acidente e é resgatado por Annie Wilkes, sua fã número um. Ela o mantém em cativeiro e o obriga a escrever uma nova obra sob tortura psicológica.', 7, '1987-06-08', 352, 'https://m.media-amazon.com/images/I/91ocgbfq55L._SY342_.jpg', 'Português', 'Thriller');

-- Amanda Lovelace – poesia traduzida
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('A Princesa Salva a Si Mesma Neste Livro', 'Primeiro livro da série "Women Are Some Kind of Magic". Poemas sobre dor, perda, trauma, cura e empoderamento feminino.', 8, '2016-02-14', 208, 'https://m.media-amazon.com/images/I/91ocgbfq55L._SY342_.jpg', 'Português', 'Poesia'),

('A Bruxa Não Vai Para a Fogueira Neste Livro', 'Segundo volume da série, que denuncia abusos e desigualdades, exaltando a força e a resistência feminina.', 8, '2018-03-06', 208, 'https://m.media-amazon.com/images/I/81KzGB1i3lL._SY342_.jpg', 'Português', 'Poesia'),

('A Voz da Sereia Volta Neste Livro', 'Terceiro volume da série. Poemas que resgatam mitos de sereias e exploram coragem, feminilidade e autodescoberta.', 8, '2019-03-05', 208, 'https://m.media-amazon.com/images/I/81iVd8DwaOL._SY342_.jpg', 'Português', 'Poesia'),

('Quebre os Seus Sapatinhos de Cristal', 'Primeiro livro da coleção "You Are Your Own Fairy Tale". Releitura de contos de fadas com olhar feminista, questionando padrões de perfeição.', 8, '2020-09-22', 224, 'https://m.media-amazon.com/images/I/81Wn1J8qf2L._SY342_.jpg', 'Português', 'Poesia'),

('Faça Sua Coroa de Gelo Brilhar', 'Segundo volume da coleção "You Are Your Own Fairy Tale". Poemas sobre dor, morte, cura e a busca pela beleza mesmo em momentos difíceis.', 8, '2022-03-08', 192, 'https://m.media-amazon.com/images/I/81iOdnY2fDL._SY342_.jpg', 'Português', 'Poesia');


-- Raphael Montes – obras completas
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('Suicidas', 'Romance de estreia de Raphael Montes. Nove jovens se reúnem para um jogo de roleta-russa e apenas um sobreviverá. Narrado em formato de inquérito policial.', 9, '2012-03-01', 400, 'https://m.media-amazon.com/images/I/81n6pZlfm5L._SY466_.jpg', 'Português', 'Suspense/Thriller'),

('Dias Perfeitos', 'Um estudante de medicina obcecado sequestra uma jovem roteirista para obrigá-la a viver o romance que ele idealizou. Thriller psicológico de projeção internacional.', 9, '2014-03-18', 280, 'https://m.media-amazon.com/images/I/71WDtG99yoL._SY466_.jpg', 'Português', 'Suspense Psicológico'),

('O Vilarejo', 'Coletânea de sete contos de terror ligados aos pecados capitais, ambientados em um vilarejo isolado. Mistura horror e literatura macabra.', 9, '2015-07-20', 96, 'https://m.media-amazon.com/images/I/71+8lH3hzpL._SY466_.jpg', 'Português', 'Terror/Contos'),

('Jantar Secreto', 'Quatro amigos organizam um jantar secreto para arrecadar dinheiro, mas o evento toma rumos sombrios quando envolve canibalismo e violência.', 9, '2016-04-11', 360, 'https://m.media-amazon.com/images/I/81X7+uH3D7L._SY466_.jpg', 'Português', 'Suspense/Terror'),

('Bom Dia, Verônica', 'Em parceria com Ilana Casoy, narra a história de uma escrivã da polícia que investiga crimes brutais enquanto lida com sua própria vida conturbada.', 9, '2016-05-01', 320, 'https://m.media-amazon.com/images/I/91l3TjAf-8L._SY466_.jpg', 'Português', 'Suspense Policial'),

('Uma Mulher no Escuro', 'Explora o trauma de uma sobrevivente de um massacre familiar. Anos depois, ela tenta recomeçar a vida, mas seu passado volta para assombrá-la.', 9, '2019-05-10', 256, 'https://m.media-amazon.com/images/I/81h7jF0S9wL._SY466_.jpg', 'Português', 'Suspense/Terror'),

('A Mágica Mortal: Uma Aventura do Esquadrão Zero', 'Livro juvenil que mistura mistério e fantasia. Um grupo de jovens precisa enfrentar enigmas mortais enquanto descobre segredos mágicos.', 9, '2023-05-15', 248, 'https://m.media-amazon.com/images/I/71+9+BdPq1L._SY466_.jpg', 'Português', 'Fantasia Juvenil'),

('Uma Família Feliz', 'Último romance policial de Raphael Montes. Um retrato sombrio de segredos familiares, relacionamentos abusivos e crimes encobertos.', 9, '2024-03-05', 304, 'https://m.media-amazon.com/images/I/81n5oAQ0kUL._SY466_.jpg', 'Português', 'Suspense Policial');


--- J. R. R. Tolkien – 5 clássicos traduzidos
INSERT INTO books (title, summary, author_id, publication_date, pages, cover_url, language, genre) VALUES
('O Hobbit', 'Publicada em 1937, a obra narra a jornada de Bilbo Bolseiro, um hobbit que parte em uma aventura inesperada com anões e o mago Gandalf para recuperar um tesouro guardado pelo dragão Smaug.', 10, '1937-09-21', 320, 'https://m.media-amazon.com/images/I/81t2CVWEsUL._SY466_.jpg', 'Português', 'Fantasia'),

('O Senhor dos Anéis: A Sociedade do Anel', 'Primeiro volume da trilogia, lançado em 1954. A história acompanha Frodo Bolseiro em sua missão de destruir o Um Anel, unindo-se à Sociedade do Anel formada por hobbits, homens, um elfo, um anão e Gandalf.', 10, '1954-07-29', 576, 'https://m.media-amazon.com/images/I/91zU0TtLZPL._SY466_.jpg', 'Português', 'Fantasia Épica'),

('O Senhor dos Anéis: As Duas Torres', 'Segundo volume da trilogia, publicado em 1954. A narrativa se divide entre a jornada de Frodo e Sam rumo a Mordor e as batalhas enfrentadas pelos demais membros da Sociedade.', 10, '1954-11-11', 464, 'https://m.media-amazon.com/images/I/81dQwQlmAXL._SY466_.jpg', 'Português', 'Fantasia Épica'),

('O Senhor dos Anéis: O Retorno do Rei', 'Terceiro e último volume da trilogia, lançado em 1955. A guerra pela Terra-média chega ao auge, enquanto Frodo e Sam tentam destruir o Um Anel em Mordor.', 10, '1955-10-20', 528, 'https://m.media-amazon.com/images/I/81X7EXg9f2L._SY466_.jpg', 'Português', 'Fantasia Épica'),

('O Silmarillion', 'Publicado postumamente em 1977, reúne mitos e lendas da Terra-média, narrando a criação do mundo, a luta entre os Valar e Morgoth e as origens de elfos e homens.', 10, '1977-09-15', 496, 'https://m.media-amazon.com/images/I/81i2eQEszQL._SY466_.jpg', 'Português', 'Fantasia Épica');


