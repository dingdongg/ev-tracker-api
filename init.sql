CREATE TABLE pokemons (
    id          uuid default gen_random_uuid(),
    name        varchar(50),
    hp          int,
    attack      int,
    defense     int,
    sp_attack   int,
    sp_defense  int,
    speed       int,
    PRIMARY KEY (id)
);

-- insert example value into the above table
INSERT INTO pokemons VALUES (gen_random_uuid(), 'gengar', 0, 0, 0, 252, 6, 252);