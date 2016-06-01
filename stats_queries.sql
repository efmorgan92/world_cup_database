/* This file aims to answer the six statistics listed in the README, using the database design to hold all World Cup information.
  Each piece of code is preceded by the question we are looking to answer.*/

/* Question: Which 5 countries have the highest all-time goal count? */
SELECT country.name, COUNT(goal.id)
FROM team
JOIN goal ON scoring_team_id = team.id
JOIN country ON team.country_id = country.id
GROUP BY country.name
ORDER BY 2 DESC
LIMIT 5;

/* Question: Which 5 countries received the most cards during the 2010 World Cup? */
SELECT country.name, COUNT(card.id)
FROM team
JOIN tournament ON tournament_id = tournament.id
JOIN country ON country_id = country.id
JOIN card ON carded_team = team.id
WHERE tournament.year = 2010
GROUP BY country.name
ORDER BY 2 DESC
LIMIT 5;

/* Question: How many total points did each team in Group A receive during the 2014 World Cup? */
SELECT country.name, COUNT(outcome_category.points)
FROM team
JOIN tournament ON tournament_id = tournament.id
JOIN groups ON groups_id = groups.id
JOIN country ON country_id = country.id
JOIN outcome ON team.id = outcome.team_id
JOIN outcome_category ON outcome_category_id = outcome_category.id 
WHERE tournament.year = 2014 AND groups.name = 'A'
GROUP BY 1
ORDER BY 1 ASC;

/* Question: How many goals have been scored against keeper Tim Howard during World Cup matches? */
SELECT COUNT(*)
FROM goal
JOIN player ON keeper_id = player.id
WHERE player.first_name = 'Tim' AND player.last_name = 'Howard';

/* Question: How many World Cup matches have been played at Estadio de Maracana in Rio de Janeiro, Brazil? */
SELECT COUNT(match.id)
FROM host_stadium
JOIN match ON host_stadium.id = host_stadium_id
JOIN stadium ON stadium_id = stadium.id 
WHERE stadium.name = 'Estadio de Maracana';

/* Question: How many individual awards has Lionel Messi won? */
SELECT COUNT(*)
FROM individual_award
JOIN player ON player_id = player.id
WHERE player.first_name = 'Lionel' AND player.last_name = 'Messi';






