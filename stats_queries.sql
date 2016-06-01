# This file aims to answer the six statistics listed in the README, using the database design to hold all World Cup information.
# Each piece of code is preceded by the question we are looking to answer.

# Question: Which 5 countries have the highest all-time goal count?

SELECT country.name, COUNT(goal.id)
FROM team
JOIN goal ON scoring_team_id = team.id
JOIN country ON team.country_id = country.id
GROUP BY country.name
ORDER BY 2 DESC
LIMIT 5;

# Question: Which 5 countries received the most number of cards during the 2010 World Cup?


# Question: How many total points did each team in Group A receive during the 2014 World Cup?

# Question: How many goals have been scored against keeper Tim Howard during World Cup matches?

# Question: How many World Cup matches have been played at Estadio de Maracana in Rio de Janeiro, Brazil?

# Question: How many individual awards has Lionel Messi won?






