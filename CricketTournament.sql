-- Table for storing player information
  CREATE TABLE players (
    player_id INTEGER PRIMARY KEY,
    name TEXT,
    team TEXT,
    age INTEGER,
    role TEXT
  );

-- Table for storing match information
  CREATE TABLE matches (
    match_id INTEGER PRIMARY KEY,
    date TEXT,
    venue TEXT,
    team1 TEXT,
    team2 TEXT
  );

-- Table for storing performance details
  CREATE TABLE performances (
    performance_id INTEGER PRIMARY KEY,
    match_id INTEGER,
    player_id INTEGER,
    runs_scored INTEGER,
    wickets_taken INTEGER,
    catches INTEGER,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
  );

-- Inserting a new player
  INSERT INTO
    players (name, team, age, role)
  VALUES
    ('Virat Kohli', 'India', 32, 'Batsman'),
    ('Dhawan', 'India', 35, 'Batsman'),
    ('Dhoni', 'India', 37, 'Batsman'),
    ('Nithin', 'India', 18, 'Batsman');
    
-- Inserting a new match
  INSERT INTO
    matches (date, venue, team1, team2)
  VALUES
    (
      '2024-05-25',
      'Wankhede Stadium',
      'India',
      'Australia'
    ),
    ('2024-07-23', 'Oval Stadium', 'India', 'England'),
    (
      '2024-09-18',
      'Chinna Swamy Stadium',
      'India',
      'Australia'
    ),
    (
      '2023-05-25',
      'Wankhede Stadium',
      'India',
      'Australia'
    );
  
-- Inserting a performance
  INSERT INTO
    performances (
      match_id,
      player_id,
      runs_scored,
      wickets_taken,
      catches
    )
  VALUES
    (1, 1, 78, 0, 2),
    (2, 4, 65, 0, 1),
    (2, 2, 33, 2, 2);
    (3, 3, 45, 0, 3),
    (1, 4, 22, 0, 1),
    (3, 4, 29, 0, 1);

-- Updating the match venue
  UPDATE
    matches
  SET
    venue = 'Eden Gardens'
  WHERE
    match_id = 1;
  
-- Retrieving all players
  SELECT
    *
  FROM
    players;
    
-- Retrieving all matches
  SELECT
    *
  FROM
    matches;
  
--Retrieving players who scored more than 50 runs in a match
  SELECT
    players.name,
    performances.runs_scored
  FROM
    players
    JOIN performances ON players.player_id = performances.player_id
  WHERE
    performances.runs_scored > 50;
  
--Calculating the total runs scored by each player
  SELECT
    players.name,
    SUM(performances.runs_scored) AS total_runs
  FROM
    players
    JOIN performances ON players.player_id = performances.player_id
  GROUP BY
    players.player_id;
  
-- Finding the average number of wickets taken by players
  SELECT
    AVG(wickets_taken) AS average_wickets
  FROM
    performances;

-- Finding the top high scorers
  SELECT
    players.name,
    SUM(performances.runs_scored) AS total_runs
  FROM
    players
    JOIN performances ON players.player_id = performances.player_id
  GROUP BY
    players.player_id
  ORDER BY
    total_runs DESC
  LIMIT
    5;

-- Retrieving players with the most wickets
  SELECT
    players.name,
    SUM(performances.wickets_taken) AS total_wickets
  FROM
    player
    JOIN performances ON players.player_id = performances.player_id
  GROUP BY
    players.player_id
  ORDER BY
    total_wickets DESC
  LIMIT
    5;
