CREATE TABLE IF NOT EXISTS pokemons (
    id                  smallserial,
    name                varchar(50),
    base_hp             smallint,
    base_attack         smallint,
    base_defense        smallint,
    base_sp_attack      smallint,
    base_sp_defense     smallint,
    base_speed          smallint,
    ev_yield            smallint,
    abilities           TEXT[],
    types               TEXT[],
    PRIMARY KEY (id)
);
