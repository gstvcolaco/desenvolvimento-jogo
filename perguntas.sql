-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/07/2025 às 17:39
-- Versão do servidor: 10.11.13-MariaDB-0ubuntu0.24.04.1
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `perguntasJogo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `alt1` varchar(50) NOT NULL,
  `alt2` varchar(50) NOT NULL,
  `alt3` varchar(50) NOT NULL,
  `alt4` varchar(50) NOT NULL,
  `resposta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `pergunta`, `alt1`, `alt2`, `alt3`, `alt4`, `resposta`) VALUES
(1, 'Qual é o resultado de 7 x 8?', '54', '56', '64', '58', '56'),
(2, 'Quem descobriu o Brasil?', 'Dom Pedro I', 'Pedro Álvares Cabral', 'Tiradentes', 'Vasco da Gama', 'Pedro Álvares Cabral'),
(3, 'Qual é a capital do Japão?', 'Seul', 'Pequim', 'Tóquio', 'Bangkok', 'Tóquio'),
(4, 'Quantos planetas existem no sistema solar?', '7', '8', '9', '10', '8'),
(5, 'Qual é o maior animal terrestre?', 'Girafa', 'Leão', 'Elefante Africano', 'Rinoceronte', 'Elefante Africano'),
(6, 'Quem escreveu \"Dom Casmurro\"?', 'Machado de Assis', 'José de Alencar', 'Carlos Drummond', 'Clarice Lispector', 'Machado de Assis'),
(7, 'Qual é a fórmula da água?', 'H2O2', 'H2O', 'CO2', 'HO2', 'H2O'),
(8, 'Quantos continentes existem?', '5', '6', '7', '8', '7'),
(9, 'Em que continente fica o Egito?', 'Ásia', 'Europa', 'África', 'América', 'África'),
(10, 'Qual é o valor de π (pi) aproximado?', '2.14', '3.14', '4.14', '5.14', '3.14'),
(11, 'Qual desses animais é um mamífero?', 'Cobra', 'Sapo', 'Golfinho', 'Papagaio', 'Golfinho'),
(12, 'Qual é a cor secundária formada pela mistura de azul e amarelo?', 'Verde', 'Laranja', 'Roxo', 'Cinza', 'Verde'),
(13, 'Quem pintou a Mona Lisa?', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'Leonardo da Vinci'),
(14, 'Qual é a capital do Brasil?', 'São Paulo', 'Brasília', 'Rio de Janeiro', 'Salvador', 'Brasília'),
(15, 'Qual o nome do presidente do Brasil eleito em 2022?', 'Lula', 'Bolsonaro', 'Dilma', 'Temer', 'Lula'),
(16, 'Qual é a capital do Japão?', 'Pequim', 'Seul', 'Tóquio', 'Bangkok', 'Tóquio'),
(17, 'Em que continente está localizada a Espanha?', 'Ásia', 'África', 'América', 'Europa', 'Europa'),
(18, 'Qual é o maior deserto do mundo?', 'Saara', 'Gobi', 'Kalahari', 'Antártico', 'Antártico'),
(19, 'Qual destes países é banhado pelo Oceano Pacífico e pelo Atlântico?', 'México', 'Canadá', 'Brasil', 'Colômbia', 'Colômbia'),
(20, 'Qual a capital de Portugal?', 'Madri', 'Porto', 'Lisboa', 'Faro', 'Lisboa'),
(21, 'O rio Nilo desagua em que mar?', 'Mar Vermelho', 'Mar Morto', 'Mar Mediterrâneo', 'Mar Negro', 'Mar Mediterrâneo'),
(22, 'Qual é a capital da Rússia?', 'São Petersburgo', 'Kiev', 'Moscou', 'Varsóvia', 'Moscou'),
(23, 'Qual o ponto mais alto do Brasil?', 'Pico da Neblina', 'Pico 31 de Março', 'Monte Roraima', 'Pico da Bandeira', 'Pico da Neblina'),
(24, 'Em que país se encontram as ruínas de Machu Picchu?', 'Bolívia', 'Peru', 'Equador', 'Colômbia', 'Peru'),
(25, 'Qual o menor país do mundo?', 'Mônaco', 'Nauru', 'San Marino', 'Vaticano', 'Vaticano'),
(26, 'Qual é a capital da Coreia do Sul?', 'Pyongyang', 'Seul', 'Busan', 'Incheon', 'Seul'),
(27, 'O Canal do Panamá liga quais oceanos?', 'Atlântico e Índico', 'Índico e Pacífico', 'Atlântico e Pacífico', 'Ártico e Atlântico', 'Atlântico e Pacífico'),
(28, 'Qual é o país mais populoso do mundo?', 'Índia', 'Estados Unidos', 'Indonésia', 'Paquistão', 'Índia'),
(29, 'Qual a capital da Argentina?', 'Santiago', 'Montevidéu', 'Buenos Aires', 'Assunção', 'Buenos Aires'),
(30, 'Qual destes países não faz parte da Escandinávia?', 'Dinamarca', 'Noruega', 'Finlândia', 'Suécia', 'Finlândia'),
(31, 'Em que ilha está localizado o vulcão Etna?', 'Sardenha', 'Córsega', 'Creta', 'Sicília', 'Sicília'),
(32, 'Qual é a capital da Austrália?', 'Sydney', 'Melbourne', 'Camberra', 'Brisbane', 'Camberra'),
(33, 'Que cidade é conhecida como \"A Cidade Eterna\"?', 'Atenas', 'Jerusalém', 'Istambul', 'Roma', 'Roma'),
(34, 'Qual é a maior ilha do mundo?', 'Bornéu', 'Madagáscar', 'Groenlândia', 'Nova Guiné', 'Groenlândia'),
(35, 'Qual o nome do estreito que separa a Espanha de Marrocos?', 'Estreito de Ormuz', 'Estreito de Magalhães', 'Estreito de Gibraltar', 'Estreito de Bering', 'Estreito de Gibraltar'),
(36, 'Em que ano terminou a Segunda Guerra Mundial?', '1943', '1944', '1945', '1946', '1945'),
(37, 'Quem foi o primeiro homem a pisar na Lua?', 'Yuri Gagarin', 'Buzz Aldrin', 'Michael Collins', 'Neil Armstrong', 'Neil Armstrong'),
(38, 'A Proclamação da República no Brasil ocorreu em que ano?', '1822', '1888', '1889', '1930', '1889'),
(39, 'Qual civilização antiga desenvolveu a escrita cuneiforme?', 'Egípcios', 'Gregos', 'Sumérios', 'Romanos', 'Sumérios'),
(40, 'Quem era o presidente dos EUA durante a Guerra Civil Americana?', 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'Theodore Roosevelt', 'Abraham Lincoln'),
(41, 'A Revolução Francesa começou em que ano?', '1776', '1789', '1804', '1815', '1789'),
(42, 'Quem foi o líder da África do Sul na luta contra o Apartheid?', 'Desmond Tutu', 'F.W. de Klerk', 'Thabo Mbeki', 'Nelson Mandela', 'Nelson Mandela'),
(43, 'Qual império foi governado por Alexandre, o Grande?', 'Império Romano', 'Império Persa', 'Império Egípcio', 'Império Macedônico', 'Império Macedônico'),
(44, 'O Muro de Berlim caiu em que ano?', '1987', '1989', '1990', '1991', '1989'),
(45, 'Quem assinou a Lei Áurea no Brasil?', 'Dom Pedro I', 'Dom Pedro II', 'Princesa Isabel', 'Marechal Deodoro', 'Princesa Isabel'),
(46, 'Qual evento deu início à Primeira Guerra Mundial?', 'A invasão da Polônia', 'O ataque a Pearl Harbor', 'O assassinato do Arquiduque Francisco Ferdinando', 'A Revolução Russa', 'O assassinato do Arquiduque Francisco Ferdinando'),
(47, 'Em que cidade italiana o Renascimento teve seu maior esplendor?', 'Roma', 'Veneza', 'Florença', 'Milão', 'Florença'),
(48, 'Quem liderou a Revolução Russa de 1917?', 'Josef Stalin', 'Leon Trotsky', 'Vladimir Lenin', 'Mikhail Gorbachev', 'Vladimir Lenin'),
(49, 'A Guerra dos Cem Anos foi travada entre quais países?', 'Inglaterra e Espanha', 'França e Espanha', 'Inglaterra e França', 'Sacro Império Romano e França', 'Inglaterra e França'),
(50, 'Qual navegador português foi o primeiro a contornar a África, chegando à Índia?', 'Pedro Álvares Cabral', 'Vasco da Gama', 'Fernão de Magalhães', 'Bartolomeu Dias', 'Vasco da Gama'),
(51, 'Quem foi o último faraó do Egito?', 'Ramsés II', 'Tutancâmon', 'Cleópatra VII', 'Akhenaton', 'Cleópatra VII'),
(52, 'A Declaração de Independência dos EUA foi assinada em que ano?', '1776', '1783', '1787', '1789', '1776'),
(53, 'Qual batalha Napoleão Bonaparte perdeu definitivamente em 1815?', 'Batalha de Austerlitz', 'Batalha de Trafalgar', 'Batalha de Leipzig', 'Batalha de Waterloo', 'Batalha de Waterloo'),
(54, 'Quem foi a primeira mulher a voar sozinha sobre o Oceano Atlântico?', 'Bessie Coleman', 'Harriet Quimby', 'Amelia Earhart', 'Jacqueline Cochran', 'Amelia Earhart'),
(55, 'Qual era o nome do navio em que Charles Darwin viajou ao redor do mundo?', 'Endeavour', 'Victoria', 'Mayflower', 'HMS Beagle', 'HMS Beagle'),
(56, 'Qual é o planeta mais próximo do Sol?', 'Vênus', 'Terra', 'Marte', 'Mercúrio', 'Mercúrio'),
(57, 'Qual é o símbolo químico para a prata?', 'Au', 'Ag', 'Si', 'Pb', 'Ag'),
(58, 'Quantos corações tem um polvo?', 'Um', 'Dois', 'Três', 'Quatro', 'Três'),
(59, 'Qual é a principal função dos glóbulos vermelhos no sangue?', 'Coagulação', 'Defesa do corpo', 'Transporte de oxigênio', 'Produção de hormônios', 'Transporte de oxigênio'),
(60, 'Quem é considerado o pai da genética?', 'Charles Darwin', 'Louis Pasteur', 'Gregor Mendel', 'James Watson', 'Gregor Mendel'),
(61, 'Qual é a velocidade da luz no vácuo?', '300.000 km/h', '300.000 km/s', '150.000 km/s', '500.000 km/s', '300.000 km/s'),
(62, 'Qual gás é o mais abundante na atmosfera da Terra?', 'Oxigênio', 'Dióxido de Carbono', 'Nitrogênio', 'Argônio', 'Nitrogênio'),
(63, 'Qual parte da célula é responsável pela produção de energia (respiração celular)?', 'Núcleo', 'Ribossomo', 'Lisossomo', 'Mitocôndria', 'Mitocôndria'),
(64, 'Qual é o metal líquido à temperatura ambiente?', 'Chumbo', 'Alumínio', 'Mercúrio', 'Gálio', 'Mercúrio'),
(65, 'A que temperatura a água ferve ao nível do mar?', '90°C', '100°C', '110°C', '120°C', '100°C'),
(66, 'Qual destes animais é um mamífero que põe ovos?', 'Canguru', 'Coala', 'Ornitorrinco', 'Morcego', 'Ornitorrinco'),
(67, 'Quem propôs as três leis do movimento?', 'Albert Einstein', 'Galileu Galilei', 'Isaac Newton', 'Nikola Tesla', 'Isaac Newton'),
(68, 'Qual é o maior órgão do corpo humano?', 'Cérebro', 'Fígado', 'Intestino', 'Pele', 'Pele'),
(69, 'De que é feito o diamante?', 'Silício', 'Grafite', 'Carbono', 'Zircônio', 'Carbono'),
(70, 'Como se chama o processo pelo qual as plantas produzem seu próprio alimento?', 'Respiração', 'Transpiração', 'Fotossíntese', 'Absorção', 'Fotossíntese'),
(71, 'Qual é o pH de uma substância neutra?', '0', '5', '7', '14', '7'),
(72, 'Qual é o nome da galáxia em que vivemos?', 'Andrômeda', 'Galáxia do Triângulo', 'Via Láctea', 'Galáxia do Sombrero', 'Via Láctea'),
(73, 'O que o DNA armazena?', 'Energia', 'Informação genética', 'Lipídios', 'Proteínas', 'Informação genética'),
(74, 'Qual é o nome da força que mantém os planetas em órbita ao redor do sol?', 'Força Magnética', 'Força Elétrica', 'Força Nuclear', 'Força da Gravidade', 'Força da Gravidade'),
(75, 'Qual o nome do processo de transformação de uma lagarta em borboleta?', 'Mutação', 'Metamorfose', 'Evolução', 'Mimetismo', 'Metamorfose'),
(76, 'Quem escreveu a obra \"Odisseia\"?', 'Sófocles', 'Virgílio', 'Platão', 'Homero', 'Homero'),
(77, 'Quem é o autor de \"O Pequeno Príncipe\"?', 'Victor Hugo', 'Antoine de Saint-Exupéry', 'Júlio Verne', 'Albert Camus', 'Antoine de Saint-Exupéry'),
(78, 'Qual artista é famoso por suas obras de surrealismo, como \"A Persistência da Memória\"?', 'Pablo Picasso', 'Vincent van Gogh', 'Salvador Dalí', 'Claude Monet', 'Salvador Dalí'),
(79, 'Quem escreveu \"Dom Casmurro\"?', 'José de Alencar', 'Monteiro Lobato', 'Carlos Drummond de Andrade', 'Machado de Assis', 'Machado de Assis'),
(80, '\"Guernica\" é uma famosa pintura de qual artista?', 'Francisco Goya', 'Diego Velázquez', 'Pablo Picasso', 'Joan Miró', 'Pablo Picasso'),
(81, 'Quem é o autor da saga \"O Senhor dos Anéis\"?', 'C.S. Lewis', 'J.K. Rowling', 'J.R.R. Tolkien', 'George R.R. Martin', 'J.R.R. Tolkien'),
(82, 'Qual compositor é conhecido como o \"Pai da Sinfonia\"?', 'Bach', 'Mozart', 'Haydn', 'Beethoven', 'Haydn'),
(83, 'Quem esculpiu a estátua de \"David\"?', 'Leonardo da Vinci', 'Donatello', 'Michelangelo', 'Rafael', 'Michelangelo'),
(84, 'Qual foi o movimento artístico de Frida Kahlo?', 'Cubismo', 'Impressionismo', 'Surrealismo', 'Realismo', 'Surrealismo'),
(85, 'Quem escreveu \"A Metamorfose\"?', 'Franz Kafka', 'Hermann Hesse', 'Thomas Mann', 'Friedrich Nietzsche', 'Franz Kafka'),
(86, 'Qual destes livros foi escrito por George Orwell?', 'Admirável Mundo Novo', 'Fahrenheit 451', '1984', 'Laranja Mecânica', '1984'),
(87, 'A \"Noite Estrelada\" é uma pintura de qual artista?', 'Paul Cézanne', 'Vincent van Gogh', 'Paul Gauguin', 'Édouard Manet', 'Vincent van Gogh'),
(88, 'Qual poeta português é famoso por sua obra \"Os Lusíadas\"?', 'Fernando Pessoa', 'Luís de Camões', 'Florbela Espanca', 'Almeida Garrett', 'Luís de Camões'),
(89, 'Na mitologia grega, quem é o deus do mar?', 'Zeus', 'Hades', 'Apolo', 'Poseidon', 'Poseidon'),
(90, 'Qual é o nome do detetive criado por Agatha Christie?', 'Sherlock Holmes', 'Sam Spade', 'Philip Marlowe', 'Hercule Poirot', 'Hercule Poirot'),
(91, 'Quem foi o principal arquiteto da Sagrada Família em Barcelona?', 'Frank Lloyd Wright', 'Le Corbusier', 'Antoni Gaudí', 'Oscar Niemeyer', 'Antoni Gaudí'),
(92, 'Qual desses não é um personagem de Shakespeare?', 'Hamlet', 'Rei Lear', 'Capitão Ahab', 'Otelo', 'Capitão Ahab'),
(93, 'A banda Queen tinha como vocalista principal qual cantor?', 'David Bowie', 'Elton John', 'Freddie Mercury', 'Mick Jagger', 'Freddie Mercury'),
(94, '\"O Pensador\" é uma famosa escultura de bronze de qual artista?', 'Auguste Rodin', 'Constantin Brancusi', 'Henry Moore', 'Alberto Giacometti', 'Auguste Rodin'),
(95, 'Qual o nome do movimento literário brasileiro que teve como destaque a \"Semana de 22\"?', 'Romantismo', 'Realismo', 'Parnasianismo', 'Modernismo', 'Modernismo'),
(96, 'Em que país foi realizada a primeira Copa do Mundo de Futebol?', 'Brasil', 'Itália', 'Uruguai', 'França', 'Uruguai'),
(97, 'Quantas casas tem um tabuleiro de xadrez?', '32', '64', '81', '100', '64'),
(98, 'Qual o nadador olímpico mais condecorado de todos os tempos?', 'Mark Spitz', 'Ian Thorpe', 'Ryan Lochte', 'Michael Phelps', 'Michael Phelps'),
(99, 'No basquete, quantos jogadores por equipe estão em quadra?', '5', '6', '7', '11', '5'),
(100, 'Qual tenista tem mais títulos de Grand Slam na categoria masculina?', 'Roger Federer', 'Rafael Nadal', 'Novak Djokovic', 'Pete Sampras', 'Novak Djokovic'),
(101, 'Qual país ganhou mais medalhas de ouro na história dos Jogos Olímpicos?', 'China', 'Rússia', 'Grã-Bretanha', 'Estados Unidos', 'Estados Unidos'),
(102, 'Como é chamado um \"strike\" no boliche?', 'Derrubar todos os pinos na primeira jogada', 'Derrubar todos os pinos em duas jogadas', 'Não derrubar nenhum pino', 'Fazer uma jogada nula', 'Derrubar todos os pinos na primeira jogada'),
(103, 'Qual é o nome do famoso estádio de futebol localizado em Londres?', 'Old Trafford', 'Anfield', 'Wembley', 'Stamford Bridge', 'Wembley'),
(104, 'Qual o país de origem do atleta Usain Bolt?', 'Estados Unidos', 'Jamaica', 'Canadá', 'Trindade e Tobago', 'Jamaica'),
(105, 'Em qual esporte se usa um \"puck\"?', 'Beisebol', 'Críquete', 'Hóquei no gelo', 'Polo aquático', 'Hóquei no gelo'),
(106, 'Onde serão realizados os Jogos Olímpicos de 2028?', 'Paris', 'Tóquio', 'Brisbane', 'Los Angeles', 'Los Angeles'),
(107, 'Quem é conhecido como \"O Rei do Futebol\"?', 'Maradona', 'Messi', 'Cristiano Ronaldo', 'Pelé', 'Pelé'),
(108, 'Qual é a corrida de ciclismo mais famosa do mundo?', 'Giro d\'Italia', 'Vuelta a España', 'Tour de France', 'Paris-Roubaix', 'Tour de France'),
(109, 'Quantos rounds normalmente tem uma luta de boxe profissional por um título mundial?', '10', '12', '15', '20', '12'),
(110, 'No voleibol, o que é um \"ace\"?', 'Um ataque que resulta em ponto', 'Um bloqueio bem-sucedido', 'Um ponto feito diretamente do saque', 'Uma defesa espetacular', 'Um ponto feito diretamente do saque'),
(111, 'Em que cidade acontece o famoso torneio de tênis de Wimbledon?', 'Paris', 'Nova Iorque', 'Melbourne', 'Londres', 'Londres'),
(112, 'Qual é o nome do evento principal do futebol americano nos EUA?', 'World Series', 'NBA Finals', 'Stanley Cup', 'Super Bowl', 'Super Bowl'),
(113, 'Quantos jogadores formam um time de rúgbi (union)?', '11', '13', '15', '16', '15'),
(114, 'Qual o recorde de gols marcados por um único jogador em uma só Copa do Mundo?', '10 (Sándor Kocsis)', '11 (Pelé)', '13 (Just Fontaine)', '16 (Miroslav Klose)', '13 (Just Fontaine)'),
(115, 'Em que país foi inventado o judô?', 'China', 'Coreia', 'Japão', 'Tailândia', 'Japão'),
(116, 'Qual é a moeda oficial do Reino Unido?', 'Euro', 'Dólar', 'Libra Esterlina', 'Franco', 'Libra Esterlina'),
(117, 'Qual empresa de tecnologia foi fundada por Bill Gates?', 'Apple', 'Google', 'Microsoft', 'Amazon', 'Microsoft'),
(118, 'Qual é o ingrediente principal do guacamole?', 'Tomate', 'Cebola', 'Abacate', 'Pimentão', 'Abacate'),
(119, 'Quantos continentes existem?', '5', '6', '7', '8', '7'),
(120, 'Qual o nome do famoso parque de diversões da Disney na Flórida?', 'Disneyland', 'Magic Kingdom', 'Epcot', 'Animal Kingdom', 'Magic Kingdom'),
(121, 'Qual destes não é um signo do zodíaco?', 'Áries', 'Leão', 'Orion', 'Sagitário', 'Orion'),
(122, 'Qual é o maior animal terrestre?', 'Rinoceronte', 'Hipopótamo', 'Elefante Africano', 'Girafa', 'Elefante Africano'),
(123, 'Qual o nome do processo de doação de sangue?', 'Hemodiálise', 'Hemoglobina', 'Hematose', 'Hemotransfusão', 'Hemotransfusão'),
(124, 'Qual é o filme de maior bilheteria de todos os tempos (sem ajuste de inflação)?', 'Titanic', 'Avatar', 'Vingadores: Ultimato', 'Avatar: O Caminho da Água', 'Avatar'),
(125, 'Quantas letras tem o alfabeto havaiano?', '12', '13', '15', '20', '13'),
(126, 'Qual é a capital mundial da moda, junto com Paris, Nova York e Londres?', 'Roma', 'Milão', 'Tóquio', 'Madri', 'Milão'),
(127, 'Qual é a montanha-russa mais rápida do mundo?', 'Kingda Ka', 'Top Thrill Dragster', 'Formula Rossa', 'Do-Dodonpa', 'Formula Rossa'),
(128, 'Qual o nome da assistente virtual da Amazon?', 'Siri', 'Cortana', 'Alexa', 'Google Assistant', 'Alexa'),
(129, 'O prato \"sushi\" é originário de que país?', 'China', 'Coreia', 'Vietnã', 'Japão', 'Japão'),
(130, 'Qual é o dia da mentira no Brasil e em outros países?', '1º de Abril', '1º de Maio', '4 de Julho', '31 de Outubro', '1º de Abril'),
(131, 'Quem foi o diretor da trilogia \"O Senhor dos Anéis\"?', 'Steven Spielberg', 'James Cameron', 'Peter Jackson', 'George Lucas', 'Peter Jackson'),
(132, 'Quantos dentes tem um ser humano adulto?', '28', '30', '32', '34', '32'),
(133, 'Qual o nome do primeiro satélite artificial lançado ao espaço?', 'Explorer 1', 'Vostok 1', 'Sputnik 1', 'Luna 1', 'Sputnik 1'),
(134, 'Em que país se originou o tango?', 'Brasil', 'Espanha', 'Argentina', 'Portugal', 'Argentina'),
(135, 'Qual o jogo de tabuleiro mais vendido do mundo?', 'Xadrez', 'Damas', 'Banco Imobiliário (Monopoly)', 'Scrabble', 'Banco Imobiliário (Monopoly)'),
(136, 'Qual destes é um tipo de macarrão?', 'Risoto', 'Paella', 'Penne', 'Couscous', 'Penne'),
(137, 'O que mede a escala Richter?', 'A velocidade do vento', 'A intensidade de terremotos', 'A pressão atmosférica', 'A temperatura', 'A intensidade de terremotos'),
(138, 'Qual é a raça do cão \"Snoopy\" dos desenhos animados?', 'Poodle', 'Dálmata', 'Beagle', 'Labrador', 'Beagle'),
(139, 'Qual é a linguagem de programação mais popular para desenvolvimento web front-end?', 'Python', 'Java', 'JavaScript', 'C#', 'JavaScript'),
(140, 'Qual o nome da agência espacial dos Estados Unidos?', 'ESA', 'Roscosmos', 'NASA', 'JAXA', 'NASA'),
(141, 'Qual o metal precioso mais caro?', 'Ouro', 'Prata', 'Platina', 'Ródio', 'Ródio'),
(142, 'Quem dirigiu o filme \"Pulp Fiction\"?', 'Martin Scorsese', 'Steven Spielberg', 'Quentin Tarantino', 'Francis Ford Coppola', 'Quentin Tarantino'),
(143, 'Qual destes animais é um marsupial?', 'Urso', 'Lêmure', 'Esquilo', 'Canguru', 'Canguru'),
(144, 'O Acordo de Paris, assinado em 2015, trata de quê?', 'Comércio internacional', 'Desarmamento nuclear', 'Direitos humanos', 'Mudanças climáticas', 'Mudanças climáticas'),
(145, 'Qual o nome da famosa torre inclinada da Itália?', 'Torre Eiffel', 'Torre de Belém', 'Torre de Pisa', 'Big Ben', 'Torre de Pisa'),
(146, 'Qual a vitamina produzida pelo corpo quando exposto ao sol?', 'Vitamina A', 'Vitamina C', 'Vitamina D', 'Vitamina B12', 'Vitamina D'),
(147, 'Em que cidade fica a sede da União Europeia?', 'Berlim', 'Paris', 'Roma', 'Bruxelas', 'Bruxelas'),
(148, 'Qual o instrumento tocado por Louis Armstrong?', 'Saxofone', 'Piano', 'Clarinete', 'Trompete', 'Trompete'),
(149, 'Quantos lados tem um octógono?', '6', '7', '8', '9', '8'),
(150, 'Qual o oceano que banha a costa leste do Brasil?', 'Pacífico', 'Índico', 'Atlântico', 'Ártico', 'Atlântico'),
(151, 'Qual é o animal nacional da Austrália?', 'Coala', 'Diabo da Tasmânia', 'Canguru', 'Dingo', 'Canguru'),
(152, 'Qual destes é um sistema operacional para computadores?', 'iOS', 'Android', 'Windows', 'Symbian', 'Windows'),
(153, 'Qual é a capital do Egito?', 'Alexandria', 'Gizé', 'Luxor', 'Cairo', 'Cairo'),
(154, 'Qual era a profissão de Van Gogh?', 'Escultor', 'Músico', 'Pintor', 'Escritor', 'Pintor'),
(155, 'Qual o principal ingrediente da culinária \"tex-mex\"?', 'Pão', 'Arroz', 'Milho', 'Batata', 'Milho'),
(156, 'Que famosa banda de rock britânica lançou o álbum \"The Dark Side of the Moon\"?', 'The Beatles', 'The Rolling Stones', 'Pink Floyd', 'Led Zeppelin', 'Pink Floyd'),
(157, 'A camada de ozônio protege a Terra de qual tipo de radiação?', 'Infravermelha', 'Ultravioleta', 'Raios X', 'Raios Gama', 'Ultravioleta'),
(158, 'Qual o nome do criador do Facebook?', 'Jeff Bezos', 'Larry Page', 'Mark Zuckerberg', 'Elon Musk', 'Mark Zuckerberg'),
(159, 'Qual é o maior osso do corpo humano?', 'Tíbia', 'Úmero', 'Fêmur', 'Pelve', 'Fêmur'),
(160, 'Em que país se encontra a Grande Muralha?', 'Japão', 'Índia', 'China', 'Mongólia', 'China'),
(161, 'Qual ator interpretou o Coringa no filme \"Batman: O Cavaleiro das Trevas\" (2008)?', 'Jack Nicholson', 'Jared Leto', 'Joaquin Phoenix', 'Heath Ledger', 'Heath Ledger'),
(162, 'Qual é a capital da Turquia?', 'Istambul', 'Ancara', 'Izmir', 'Bursa', 'Ancara'),
(163, 'Qual é o processo de um líquido se transformar em gás?', 'Condensação', 'Solidificação', 'Fusão', 'Evaporação', 'Evaporação'),
(164, 'Qual é o nome do criador da série \"Star Wars\"?', 'J.J. Abrams', 'George Lucas', 'Irvin Kershner', 'Rian Johnson', 'George Lucas'),
(165, 'Onde é celebrado o festival \"Dia dos Mortos\"?', 'Espanha', 'Portugal', 'México', 'Argentina', 'México');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
