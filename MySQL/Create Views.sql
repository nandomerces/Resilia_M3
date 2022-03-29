#quantidade de vezes que um diretor dirigiu um episódio
CREATE VIEW view_episodesdirector AS
SELECT episodes.season, episodes.episode, episodes.title, episodes.director
FROM episodes;

select * from view_episodesdirector;


CREATE view view_stars as
select episodes.season, episodes.episode, episodes.title, episodes.Star_1, episodes.Star_2, episodes.Star_3
from episodes;

select * from `view_stars`;

Create view view_orderbyseasonepisode as
select episodes.Season, episodes.Episode, episodes.Title, episodes.duration
from episodes
order by episodes.Season, episodes.Episode;