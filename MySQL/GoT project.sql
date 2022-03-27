use gotm3;

select * from episodes;

#mostrar tempo de duração dos episódios de cada temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.duration
from episodes
order by episodes.Season, episodes.Episode;

select * from episodes;

#ranking tempo de duração dos episódios
select episodes.Season, episodes.Episode, episodes.Title, episodes.duration
from episodes
order by duration desc;

#duração de cada temporada (soma do tempo dos episódios)
SELECT season, SUM(duration), COUNT(season)
FROM episodes
GROUP BY season;


#mostrar avaliação dos episódios
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating
from episodes
order by episodes.Season, episodes.Episode;

#mostrar avaliação dos episódios da sexta temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating
from episodes
where season = 6;

#mostrar avaliação dos episódios da oitava temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating
from episodes
where season = 8;

#mostrar um ranking dos 10 episódios melhor avaliados
##categoria avaliação (rating)
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
order by rating
DESC LIMIT 10;

##categoria Votos
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
order by Votes
DESC LIMIT 10;

##categoria Resenha de Usuários
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
order by Users_reviews
DESC LIMIT 10;

##categoria Resenha dos críticos
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
order by Critics_reviews
DESC LIMIT 10;

##categoria ibope nos EUA
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
order by US_Viewers
DESC LIMIT 10;

#mostrar o índice de audiência dos episódios da sexta temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.US_Viewers
from episodes
where season = 6;

#mostrar o ranking do índice de audiência dos episódios da sexta temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.US_Viewers
from episodes
where season = 6
order by US_Viewers desc;

#mostrar o índice de audiência dos episódios da oitava temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.US_Viewers
from episodes
where season = 8;

#mostrar o ranking do índice de audência dos episódios da oitava temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.US_Viewers
from episodes
where season = 8
order by US_Viewers desc;

#mostrar os índices do episódio 9 da sexta temporada
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
where episode = 9 and season = 6;

#mostrar os índices de audiência e as avaliações das temporadas sete e oito
select episodes.Season, episodes.Episode, episodes.Title, episodes.Rating, episodes.Votes, episodes.Users_reviews, episodes.Critics_reviews, episodes.US_Viewers
from episodes
where season > 6;

#as casas que tem personagens que mais apareceram na série
select characters.Character, characters.Episodes_appeared
from characters
order by Episodes_appeared
desc limit 10;

#quantidade de vezes que um diretor dirigiu um episódio
#desses episódios, quais tiveram as melhores avaliações



#variação de personagens como principal, secundário e de apoio nos episódios e nas temporadas




#falta trabalhar essas perguntas

##as casas que tem mais personagens vivos no último episódio
##qtos dos personagens que estão presentes no primeiro capítulo estão vivos no último (subquery)

##mostrar o ranking das 30 séries de tv preferidas do público nos tempos atuais - informações obtidas em banco de dados externo

##qual a melhor métrica de episódios que pode gerar um produto spin-off viável?
##rating + premiações

desc episodes;