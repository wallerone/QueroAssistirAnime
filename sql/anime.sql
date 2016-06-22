--jdbc:derby:db;create=true
--Tabela usada para realização do projeto AnimeNext, assim como os comandos sql utilizados...

create table anime(
  codigo int,
  titulo varchar(255),
  genero varchar(255),
  lancamento  varchar(255),
  direcao  varchar(255),
  temporada int
)

select codigo, titulo, genero, lancamento, direcao, temporada from anime


insert into anime (codigo, titulo, genero, lancamento, direcao, temporada) values (1, 'Koutetsujou no Kabaneri', 'Ação, Drama, Sci-Fi', '01/01/2016', 'Tetsuro Araki', 1)
insert into anime (codigo, titulo, genero, lancamento, direcao, temporada) values (2, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'Drama, Fantasia', '25/02/2016', 'Masaharu Watanabe', 1)
insert into anime (codigo, titulo, genero, lancamento, direcao, temporada) values (3, 'Koutetsujou no Kabaneri', 'Ação, Aventura, Comédia, Shounen, Super Poder', '28/02/2016', 'Kenji Nagasaki', 1)
insert into anime (codigo, titulo, genero, lancamento, direcao, temporada) values (4, 'Sousei no Onmyouji', 'Ação, Fantasia, Shounen, Sobrenatural', '05/02/2016', 'Tomohisa Taguchi', 1)
