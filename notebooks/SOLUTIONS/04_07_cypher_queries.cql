MATCH (a:Activity)
WHERE NOT (a)-[:USES]->(:Equipment {id: "Ski Poles"})
RETURN a

MATCH (a {id: "International Ski And Snowboard Federation"})-[r]-{1,2}(b)
RETURN a, r, b

MATCH (org:Organization {id: "International Ski and Snowboard Federation"})-[:GOVERNED_BY]-(sport:Sport)-[:TRAINING_METHOD]->(trainingMethod:Sport)
RETURN org, sport, trainingMethod

MATCH (a {id: "Grass Skiing"})-[r]-{1,2}(b)
RETURN a, r, b

MATCH (p:Person)-[:MEN_OVERALL_WINNER]->(e:Event {id: "2024–25 FIS Alpine Ski World Cup"})
MATCH (p)-[:REPRESENTS]->(c:Country)
RETURN p, e, c

MATCH (a {id: "2024–25 Fis Alpine Ski World Cup"})
RETURN a