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

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BULBASAUR', 45, 49, 49, 65, 65, 45, 256, '{"Overgrow", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('IVYSAUR', 60, 62, 63, 80, 80, 60, 1280, '{"Overgrow", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VENUSAUR', 80, 82, 83, 100, 100, 80, 1536, '{"Overgrow", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHARMANDER', 39, 52, 43, 60, 50, 65, 64, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHARMELEON', 58, 64, 58, 80, 65, 80, 320, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHARIZARD', 78, 84, 78, 109, 85, 100, 768, '{"Blaze", ""}', '{"FIRE", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SQUIRTLE', 44, 48, 65, 50, 64, 43, 16, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WARTORTLE', 59, 63, 80, 65, 80, 58, 1040, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BLASTOISE', 79, 83, 100, 85, 105, 78, 3072, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CATERPIE', 45, 30, 35, 20, 20, 45, 1, '{"Shield Dust", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('METAPOD', 50, 20, 55, 25, 25, 30, 32, '{"Shed Skin", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BUTTERFREE', 60, 45, 50, 80, 80, 70, 1536, '{"Compound Eyes", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WEEDLE', 40, 35, 30, 20, 20, 50, 64, '{"Shield Dust", ""}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KAKUNA', 45, 25, 50, 25, 25, 35, 32, '{"Shed Skin", ""}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BEEDRILL', 65, 80, 40, 45, 80, 75, 1032, '{"Swarm", ""}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PIDGEY', 40, 45, 40, 35, 35, 56, 64, '{"Keen Eye", "Tangled Feet"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PIDGEOTTO', 63, 60, 55, 50, 50, 71, 128, '{"Keen Eye", "Tangled Feet"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PIDGEOT', 83, 80, 75, 70, 70, 91, 192, '{"Keen Eye", "Tangled Feet"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RATTATA', 30, 56, 35, 25, 35, 72, 64, '{"Run Away", "Guts"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RATICATE', 55, 81, 60, 50, 70, 97, 128, '{"Run Away", "Guts"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SPEAROW', 40, 60, 30, 31, 31, 70, 64, '{"Keen Eye", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FEAROW', 65, 90, 65, 61, 61, 100, 128, '{"Keen Eye", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('EKANS', 35, 60, 44, 40, 54, 55, 4, '{"Intimidate", "Shed Skin"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARBOK', 60, 85, 69, 65, 79, 80, 8, '{"Intimidate", "Shed Skin"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PIKACHU', 35, 55, 30, 50, 40, 90, 128, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RAICHU', 60, 90, 55, 90, 80, 100, 192, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SANDSHREW', 50, 75, 85, 20, 30, 40, 16, '{"Sand Veil", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SANDSLASH', 75, 100, 110, 45, 55, 65, 32, '{"Sand Veil", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NIDORAN♀', 55, 47, 52, 40, 40, 41, 1, '{"Poison Point", "Rivalry"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NIDORINA', 70, 62, 67, 55, 55, 56, 2, '{"Poison Point", "Rivalry"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NIDOQUEEN', 90, 82, 87, 75, 85, 76, 3, '{"Poison Point", "Rivalry"}', '{"POISON", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NIDORAN♂', 46, 57, 40, 40, 40, 50, 4, '{"Poison Point", "Rivalry"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NIDORINO', 61, 72, 57, 55, 55, 65, 8, '{"Poison Point", "Rivalry"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NIDOKING', 81, 92, 77, 85, 75, 85, 12, '{"Poison Point", "Rivalry"}', '{"POISON", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CLEFAIRY', 70, 45, 48, 60, 65, 35, 2, '{"Cute Charm", "Magic Guard"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CLEFABLE', 95, 70, 73, 85, 90, 60, 3, '{"Cute Charm", "Magic Guard"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VULPIX', 38, 41, 40, 50, 65, 65, 64, '{"Flash Fire", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NINETALES', 73, 76, 75, 81, 100, 100, 1088, '{"Flash Fire", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('JIGGLYPUFF', 115, 45, 20, 45, 25, 20, 2, '{"Cute Charm", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WIGGLYTUFF', 140, 70, 45, 75, 50, 45, 3, '{"Cute Charm", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ZUBAT', 40, 45, 35, 30, 40, 55, 64, '{"Inner Focus", ""}', '{"POISON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GOLBAT', 75, 80, 70, 65, 75, 90, 128, '{"Inner Focus", ""}', '{"POISON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ODDISH', 45, 50, 55, 75, 65, 30, 256, '{"Chlorophyll", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GLOOM', 60, 65, 70, 85, 75, 40, 512, '{"Chlorophyll", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VILEPLUME', 75, 80, 85, 100, 90, 50, 768, '{"Chlorophyll", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PARAS', 35, 70, 55, 45, 55, 25, 4, '{"Effect Spore", "Dry Skin"}', '{"BUG", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PARASECT', 60, 95, 80, 60, 80, 30, 24, '{"Effect Spore", "Dry Skin"}', '{"BUG", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VENONAT', 60, 55, 50, 40, 55, 45, 1024, '{"Compound Eyes", "Tinted Lens"}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VENOMOTH', 70, 65, 60, 90, 75, 90, 320, '{"Shield Dust", "Tinted Lens"}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DIGLETT', 10, 55, 25, 35, 45, 95, 64, '{"Sand Veil", "Arena Trap"}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DUGTRIO', 35, 80, 50, 50, 70, 120, 128, '{"Sand Veil", "Arena Trap"}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MEOWTH', 40, 45, 35, 40, 40, 90, 64, '{"Pickup", "Technician"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PERSIAN', 65, 70, 60, 65, 65, 115, 128, '{"Limber", "Technician"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PSYDUCK', 50, 52, 48, 65, 50, 55, 256, '{"Damp", "Cloud Nine"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GOLDUCK', 80, 82, 78, 95, 80, 85, 512, '{"Damp", "Cloud Nine"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MANKEY', 40, 80, 35, 35, 45, 70, 4, '{"Vital Spirit", "Anger Point"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PRIMEAPE', 65, 105, 60, 60, 70, 95, 8, '{"Vital Spirit", "Anger Point"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GROWLITHE', 55, 70, 45, 70, 50, 60, 4, '{"Intimidate", "Flash Fire"}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARCANINE', 90, 110, 80, 100, 80, 95, 8, '{"Intimidate", "Flash Fire"}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('POLIWAG', 40, 50, 40, 40, 40, 90, 64, '{"Water Absorb", "Damp"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('POLIWHIRL', 65, 65, 65, 50, 50, 90, 128, '{"Water Absorb", "Damp"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('POLIWRATH', 90, 85, 95, 70, 90, 70, 48, '{"Water Absorb", "Damp"}', '{"WATER", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ABRA', 25, 20, 15, 105, 55, 90, 256, '{"Synchronize", "Inner Focus"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KADABRA', 40, 35, 30, 120, 70, 105, 512, '{"Synchronize", "Inner Focus"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ALAKAZAM', 55, 50, 45, 135, 85, 120, 768, '{"Synchronize", "Inner Focus"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MACHOP', 70, 80, 50, 35, 35, 35, 4, '{"Guts", "No Guard"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MACHOKE', 80, 100, 70, 50, 60, 45, 8, '{"Guts", "No Guard"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MACHAMP', 90, 130, 80, 65, 85, 55, 12, '{"Guts", "No Guard"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BELLSPROUT', 50, 75, 35, 70, 30, 40, 4, '{"Chlorophyll", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WEEPINBELL', 65, 90, 50, 85, 45, 55, 8, '{"Chlorophyll", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VICTREEBEL', 80, 105, 65, 100, 60, 70, 12, '{"Chlorophyll", ""}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TENTACOOL', 40, 40, 35, 50, 100, 70, 1024, '{"Clear Body", "Liquid Ooze"}', '{"WATER", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TENTACRUEL', 80, 70, 65, 80, 120, 100, 2048, '{"Clear Body", "Liquid Ooze"}', '{"WATER", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GEODUDE', 40, 80, 100, 30, 30, 20, 16, '{"Rock Head", "Sturdy"}', '{"ROCK", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GRAVELER', 55, 95, 115, 45, 45, 35, 32, '{"Rock Head", "Sturdy"}', '{"ROCK", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GOLEM', 80, 110, 130, 55, 65, 45, 48, '{"Rock Head", "Sturdy"}', '{"ROCK", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PONYTA', 50, 85, 55, 65, 65, 90, 64, '{"Run Away", "Flash Fire"}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RAPIDASH', 65, 100, 70, 80, 80, 105, 128, '{"Run Away", "Flash Fire"}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SLOWPOKE', 90, 65, 65, 40, 40, 15, 1, '{"Oblivious", "Own Tempo"}', '{"WATER", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SLOWBRO', 95, 75, 110, 100, 80, 30, 32, '{"Oblivious", "Own Tempo"}', '{"WATER", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGNEMITE', 25, 35, 70, 95, 55, 45, 256, '{"Magnet Pull", "Sturdy"}', '{"ELECTRIC", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGNETON', 50, 60, 95, 120, 70, 70, 512, '{"Magnet Pull", "Sturdy"}', '{"ELECTRIC", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FARFETCH’D', 52, 65, 55, 58, 62, 60, 4, '{"Keen Eye", "Inner Focus"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DODUO', 35, 85, 45, 35, 35, 75, 4, '{"Run Away", "Early Bird"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DODRIO', 60, 110, 70, 60, 60, 100, 8, '{"Run Away", "Early Bird"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SEEL', 65, 45, 55, 45, 70, 45, 1024, '{"Thick Fat", "Hydration"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DEWGONG', 90, 70, 80, 70, 95, 70, 2048, '{"Thick Fat", "Hydration"}', '{"WATER", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GRIMER', 80, 80, 50, 40, 50, 25, 1, '{"Stench", "Sticky Hold"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MUK', 105, 105, 75, 65, 100, 50, 5, '{"Stench", "Sticky Hold"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHELLDER', 30, 65, 100, 45, 25, 40, 16, '{"Shell Armor", "Skill Link"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CLOYSTER', 50, 95, 180, 85, 45, 70, 32, '{"Shell Armor", "Skill Link"}', '{"WATER", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GASTLY', 30, 35, 30, 100, 35, 80, 256, '{"Levitate", ""}', '{"GHOST", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HAUNTER', 45, 50, 45, 115, 55, 95, 512, '{"Levitate", ""}', '{"GHOST", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GENGAR', 60, 65, 60, 130, 75, 110, 768, '{"Levitate", ""}', '{"GHOST", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ONIX', 35, 45, 160, 30, 45, 70, 16, '{"Rock Head", "Sturdy"}', '{"ROCK", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DROWZEE', 60, 48, 45, 43, 90, 42, 1024, '{"Insomnia", "Forewarn"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HYPNO', 85, 73, 70, 73, 115, 67, 2048, '{"Insomnia", "Forewarn"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KRABBY', 30, 105, 90, 25, 25, 50, 4, '{"Hyper Cutter", "Shell Armor"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KINGLER', 55, 130, 115, 50, 50, 75, 8, '{"Hyper Cutter", "Shell Armor"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VOLTORB', 40, 30, 50, 55, 55, 100, 64, '{"Soundproof", "Static"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ELECTRODE', 60, 50, 70, 80, 80, 140, 128, '{"Soundproof", "Static"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('EXEGGCUTE', 60, 40, 80, 60, 45, 40, 16, '{"Chlorophyll", ""}', '{"GRASS", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('EXEGGUTOR', 95, 95, 85, 125, 65, 55, 512, '{"Chlorophyll", ""}', '{"GRASS", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CUBONE', 50, 50, 95, 40, 50, 35, 16, '{"Rock Head", "Lightning Rod"}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAROWAK', 60, 80, 110, 50, 80, 45, 32, '{"Rock Head", "Lightning Rod"}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HITMONLEE', 50, 120, 53, 35, 110, 87, 8, '{"Limber", "Reckless"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HITMONCHAN', 50, 105, 79, 35, 110, 76, 2048, '{"Keen Eye", "Iron Fist"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LICKITUNG', 90, 55, 75, 60, 75, 30, 2, '{"Own Tempo", "Oblivious"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KOFFING', 40, 65, 95, 60, 45, 35, 16, '{"Levitate", ""}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WEEZING', 65, 90, 120, 85, 70, 60, 32, '{"Levitate", ""}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RHYHORN', 80, 85, 95, 30, 30, 25, 16, '{"Lightning Rod", "Rock Head"}', '{"GROUND", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RHYDON', 105, 130, 120, 45, 45, 40, 8, '{"Lightning Rod", "Rock Head"}', '{"GROUND", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHANSEY', 250, 5, 5, 35, 105, 50, 2, '{"Natural Cure", "Serene Grace"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TANGELA', 65, 55, 115, 100, 40, 60, 16, '{"Chlorophyll", "Leaf Guard"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KANGASKHAN', 105, 95, 80, 40, 80, 90, 2, '{"Early Bird", "Scrappy"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HORSEA', 30, 40, 70, 70, 25, 60, 256, '{"Swift Swim", "Sniper"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SEADRA', 55, 65, 95, 95, 45, 85, 272, '{"Poison Point", "Sniper"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GOLDEEN', 45, 67, 60, 35, 50, 63, 4, '{"Swift Swim", "Water Veil"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SEAKING', 80, 92, 65, 65, 80, 68, 8, '{"Swift Swim", "Water Veil"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STARYU', 30, 45, 55, 70, 55, 85, 64, '{"Illuminate", "Natural Cure"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STARMIE', 60, 75, 85, 100, 85, 115, 128, '{"Illuminate", "Natural Cure"}', '{"WATER", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MR. MIME', 40, 45, 65, 100, 120, 90, 2048, '{"Soundproof", "Filter"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SCYTHER', 70, 110, 80, 55, 80, 105, 4, '{"Swarm", "Technician"}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('JYNX', 65, 50, 35, 115, 95, 95, 512, '{"Oblivious", "Forewarn"}', '{"ICE", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ELECTABUZZ', 65, 83, 57, 95, 85, 105, 128, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGMAR', 65, 95, 57, 100, 85, 93, 512, '{"Flame Body", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PINSIR', 65, 125, 100, 55, 70, 85, 8, '{"Hyper Cutter", "Mold Breaker"}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TAUROS', 75, 100, 95, 40, 70, 110, 68, '{"Intimidate", "Anger Point"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGIKARP', 20, 10, 55, 15, 20, 80, 64, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GYARADOS', 95, 125, 79, 60, 100, 81, 8, '{"Intimidate", ""}', '{"WATER", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LAPRAS', 130, 85, 80, 85, 95, 60, 2, '{"Water Absorb", "Shell Armor"}', '{"WATER", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DITTO', 48, 48, 48, 48, 48, 48, 1, '{"Limber", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('EEVEE', 55, 55, 50, 45, 65, 55, 1024, '{"Run Away", "Adaptability"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VAPOREON', 130, 65, 60, 110, 95, 65, 2, '{"Water Absorb", "Water Absorb"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('JOLTEON', 65, 65, 60, 110, 95, 130, 128, '{"Volt Absorb", "Volt Absorb"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FLAREON', 65, 130, 60, 95, 110, 65, 8, '{"Flash Fire", "Flash Fire"}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PORYGON', 65, 60, 70, 85, 75, 40, 256, '{"Trace", "Download"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('OMANYTE', 35, 40, 100, 90, 55, 35, 16, '{"Swift Swim", "Shell Armor"}', '{"ROCK", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('OMASTAR', 70, 60, 125, 115, 70, 55, 32, '{"Swift Swim", "Shell Armor"}', '{"ROCK", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KABUTO', 30, 80, 90, 55, 45, 55, 16, '{"Swift Swim", "Battle Armor"}', '{"ROCK", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KABUTOPS', 60, 115, 105, 65, 70, 80, 8, '{"Swift Swim", "Battle Armor"}', '{"ROCK", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AERODACTYL', 80, 105, 65, 60, 75, 130, 128, '{"Rock Head", "Pressure"}', '{"ROCK", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SNORLAX', 160, 110, 65, 65, 110, 30, 2, '{"Immunity", "Thick Fat"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARTICUNO', 90, 85, 100, 95, 125, 85, 3072, '{"Pressure", ""}', '{"ICE", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ZAPDOS', 90, 90, 85, 125, 90, 100, 768, '{"Pressure", ""}', '{"ELECTRIC", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MOLTRES', 90, 100, 90, 125, 85, 90, 768, '{"Pressure", ""}', '{"FIRE", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DRATINI', 41, 64, 45, 50, 50, 50, 4, '{"Shed Skin", ""}', '{"DRAGON", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DRAGONAIR', 61, 84, 65, 70, 70, 70, 8, '{"Shed Skin", ""}', '{"DRAGON", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DRAGONITE', 91, 134, 95, 100, 100, 80, 12, '{"Inner Focus", ""}', '{"DRAGON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MEWTWO', 106, 110, 90, 154, 90, 130, 768, '{"Pressure", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MEW', 100, 100, 100, 100, 100, 100, 3, '{"Synchronize", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHIKORITA', 45, 49, 65, 49, 65, 45, 1024, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BAYLEEF', 60, 62, 80, 63, 80, 60, 1040, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MEGANIUM', 80, 82, 100, 83, 100, 80, 2064, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CYNDAQUIL', 39, 52, 43, 60, 50, 65, 64, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('QUILAVA', 58, 64, 58, 80, 65, 80, 320, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TYPHLOSION', 78, 84, 78, 109, 85, 100, 768, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TOTODILE', 50, 65, 64, 44, 48, 43, 4, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CROCONAW', 65, 80, 80, 59, 63, 58, 20, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FERALIGATR', 85, 105, 100, 79, 83, 78, 24, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SENTRET', 35, 46, 34, 35, 45, 20, 4, '{"Run Away", "Keen Eye"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FURRET', 85, 76, 64, 45, 55, 90, 128, '{"Run Away", "Keen Eye"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HOOTHOOT', 60, 30, 30, 36, 56, 50, 1, '{"Insomnia", "Keen Eye"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NOCTOWL', 100, 50, 50, 76, 96, 70, 2, '{"Insomnia", "Keen Eye"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LEDYBA', 40, 20, 30, 40, 80, 55, 1024, '{"Swarm", "Early Bird"}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LEDIAN', 55, 35, 50, 55, 110, 85, 2048, '{"Swarm", "Early Bird"}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SPINARAK', 40, 60, 40, 40, 40, 30, 4, '{"Swarm", "Insomnia"}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARIADOS', 70, 90, 70, 60, 60, 40, 8, '{"Swarm", "Insomnia"}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CROBAT', 85, 90, 80, 70, 80, 130, 192, '{"Inner Focus", ""}', '{"POISON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHINCHOU', 75, 38, 38, 56, 56, 67, 1, '{"Volt Absorb", "Illuminate"}', '{"WATER", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LANTURN', 125, 58, 58, 76, 76, 67, 2, '{"Volt Absorb", "Illuminate"}', '{"WATER", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PICHU', 20, 40, 15, 35, 35, 60, 64, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CLEFFA', 50, 25, 28, 45, 55, 15, 1024, '{"Cute Charm", "Magic Guard"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('IGGLYBUFF', 90, 30, 15, 40, 20, 15, 1, '{"Cute Charm", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TOGEPI', 35, 20, 65, 40, 65, 20, 1024, '{"Hustle", "Serene Grace"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TOGETIC', 55, 40, 85, 80, 105, 40, 2048, '{"Hustle", "Serene Grace"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NATU', 40, 50, 45, 70, 45, 70, 256, '{"Synchronize", "Early Bird"}', '{"PSYCHIC", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('XATU', 65, 75, 70, 95, 70, 95, 320, '{"Synchronize", "Early Bird"}', '{"PSYCHIC", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAREEP', 55, 40, 40, 65, 45, 35, 256, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FLAAFFY', 70, 55, 55, 80, 60, 45, 512, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AMPHAROS', 90, 75, 75, 115, 90, 55, 768, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BELLOSSOM', 75, 80, 85, 90, 100, 50, 3072, '{"Chlorophyll", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MARILL', 70, 20, 50, 20, 50, 40, 2, '{"Thick Fat", "Huge Power"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AZUMARILL', 100, 50, 80, 50, 80, 50, 3, '{"Thick Fat", "Huge Power"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SUDOWOODO', 70, 100, 115, 30, 65, 30, 32, '{"Sturdy", "Rock Head"}', '{"ROCK", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('POLITOED', 90, 75, 75, 90, 100, 70, 3072, '{"Water Absorb", "Damp"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HOPPIP', 35, 35, 40, 35, 55, 50, 1024, '{"Chlorophyll", "Leaf Guard"}', '{"GRASS", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SKIPLOOM', 55, 45, 50, 45, 65, 80, 128, '{"Chlorophyll", "Leaf Guard"}', '{"GRASS", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('JUMPLUFF', 75, 55, 70, 55, 85, 110, 192, '{"Chlorophyll", "Leaf Guard"}', '{"GRASS", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AIPOM', 55, 70, 55, 40, 55, 85, 64, '{"Run Away", "Pickup"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SUNKERN', 30, 30, 30, 30, 30, 30, 256, '{"Chlorophyll", "Solar Power"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SUNFLORA', 75, 75, 55, 105, 85, 30, 512, '{"Chlorophyll", "Solar Power"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('YANMA', 65, 65, 45, 75, 45, 95, 64, '{"Speed Boost", "Compound Eyes"}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WOOPER', 55, 45, 45, 25, 25, 15, 1, '{"Damp", "Water Absorb"}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('QUAGSIRE', 95, 85, 85, 65, 65, 35, 2, '{"Damp", "Water Absorb"}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ESPEON', 65, 65, 60, 130, 95, 110, 512, '{"Synchronize", "Synchronize"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('UMBREON', 95, 65, 110, 60, 130, 65, 2048, '{"Synchronize", "Synchronize"}', '{"DARK", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MURKROW', 60, 85, 42, 85, 42, 91, 64, '{"Insomnia", "Super Luck"}', '{"DARK", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SLOWKING', 95, 75, 80, 100, 110, 30, 3072, '{"Oblivious", "Own Tempo"}', '{"WATER", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MISDREAVUS', 60, 60, 60, 85, 85, 85, 1024, '{"Levitate", ""}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('UNOWN', 48, 72, 48, 72, 48, 48, 260, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WOBBUFFET', 190, 33, 58, 33, 58, 33, 2, '{"Shadow Tag", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GIRAFARIG', 70, 80, 65, 90, 65, 85, 512, '{"Inner Focus", "Early Bird"}', '{"NORMAL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PINECO', 50, 65, 90, 35, 35, 15, 16, '{"Sturdy", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FORRETRESS', 75, 90, 140, 60, 60, 40, 32, '{"Sturdy", ""}', '{"BUG", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DUNSPARCE', 100, 70, 70, 65, 65, 45, 1, '{"Serene Grace", "Run Away"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GLIGAR', 65, 75, 105, 35, 65, 85, 16, '{"Hyper Cutter", "Sand Veil"}', '{"GROUND", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STEELIX', 75, 85, 200, 55, 65, 30, 32, '{"Rock Head", "Sturdy"}', '{"STEEL", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SNUBBULL', 60, 80, 50, 40, 40, 30, 4, '{"Intimidate", "Run Away"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GRANBULL', 90, 120, 75, 60, 60, 45, 8, '{"Intimidate", "Quick Feet"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('QWILFISH', 65, 95, 75, 55, 55, 85, 4, '{"Poison Point", "Swift Swim"}', '{"WATER", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SCIZOR', 70, 130, 100, 55, 80, 65, 8, '{"Swarm", "Technician"}', '{"BUG", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHUCKLE', 20, 10, 230, 10, 230, 5, 1040, '{"Sturdy", "Gluttony"}', '{"BUG", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HERACROSS', 80, 125, 75, 40, 95, 85, 8, '{"Swarm", "Guts"}', '{"BUG", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SNEASEL', 55, 95, 55, 35, 75, 115, 64, '{"Inner Focus", "Keen Eye"}', '{"DARK", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TEDDIURSA', 60, 80, 50, 50, 50, 40, 4, '{"Pickup", "Quick Feet"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('URSARING', 90, 130, 75, 75, 75, 55, 8, '{"Guts", "Quick Feet"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SLUGMA', 40, 40, 40, 70, 40, 20, 256, '{"Magma Armor", "Flame Body"}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGCARGO', 50, 50, 120, 80, 80, 30, 32, '{"Magma Armor", "Flame Body"}', '{"FIRE", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SWINUB', 50, 50, 40, 30, 30, 50, 4, '{"Oblivious", "Snow Cloak"}', '{"ICE", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PILOSWINE', 100, 100, 80, 60, 60, 50, 5, '{"Oblivious", "Snow Cloak"}', '{"ICE", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CORSOLA', 55, 55, 85, 65, 85, 35, 1040, '{"Hustle", "Natural Cure"}', '{"WATER", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('REMORAID', 35, 65, 35, 65, 35, 65, 256, '{"Hustle", "Sniper"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('OCTILLERY', 75, 105, 75, 105, 75, 45, 260, '{"Suction Cups", "Sniper"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DELIBIRD', 45, 55, 45, 65, 45, 75, 64, '{"Vital Spirit", "Hustle"}', '{"ICE", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MANTINE', 65, 40, 70, 80, 140, 70, 2048, '{"Swift Swim", "Water Absorb"}', '{"WATER", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SKARMORY', 65, 80, 140, 40, 70, 70, 32, '{"Keen Eye", "Sturdy"}', '{"STEEL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HOUNDOUR', 45, 60, 30, 80, 50, 65, 256, '{"Early Bird", "Flash Fire"}', '{"DARK", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HOUNDOOM', 75, 90, 50, 110, 80, 95, 512, '{"Early Bird", "Flash Fire"}', '{"DARK", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KINGDRA', 75, 95, 95, 95, 95, 85, 1284, '{"Swift Swim", "Sniper"}', '{"WATER", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PHANPY', 90, 60, 60, 40, 40, 40, 1, '{"Pickup", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DONPHAN', 90, 120, 120, 60, 60, 50, 20, '{"Sturdy", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PORYGON2', 85, 80, 90, 105, 95, 60, 512, '{"Trace", "Download"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STANTLER', 73, 95, 62, 85, 65, 85, 4, '{"Intimidate", "Frisk"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SMEARGLE', 55, 20, 35, 20, 45, 75, 64, '{"Own Tempo", "Technician"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TYROGUE', 35, 35, 35, 35, 35, 35, 4, '{"Guts", "Steadfast"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HITMONTOP', 50, 95, 95, 35, 110, 70, 2048, '{"Intimidate", "Technician"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SMOOCHUM', 45, 30, 15, 85, 65, 65, 256, '{"Oblivious", "Forewarn"}', '{"ICE", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ELEKID', 45, 63, 37, 65, 55, 95, 64, '{"Static", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGBY', 45, 75, 37, 70, 55, 83, 64, '{"Flame Body", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MILTANK', 95, 80, 105, 40, 70, 100, 32, '{"Thick Fat", "Scrappy"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BLISSEY', 255, 10, 10, 75, 135, 55, 3, '{"Natural Cure", "Serene Grace"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RAIKOU', 90, 85, 75, 115, 100, 115, 384, '{"Pressure", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ENTEI', 115, 115, 85, 90, 75, 100, 9, '{"Pressure", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SUICUNE', 100, 75, 115, 90, 115, 85, 2064, '{"Pressure", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LARVITAR', 50, 64, 50, 45, 50, 41, 4, '{"Guts", ""}', '{"ROCK", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PUPITAR', 70, 84, 70, 65, 70, 51, 8, '{"Shed Skin", ""}', '{"ROCK", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TYRANITAR', 100, 134, 110, 95, 100, 61, 12, '{"Sand Stream", ""}', '{"ROCK", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUGIA', 106, 90, 130, 90, 154, 110, 3072, '{"Pressure", ""}', '{"PSYCHIC", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HO-OH', 106, 130, 90, 110, 154, 90, 3072, '{"Pressure", ""}', '{"FIRE", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CELEBI', 100, 100, 100, 100, 100, 100, 3, '{"Natural Cure", ""}', '{"PSYCHIC", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TREECKO', 40, 45, 35, 65, 55, 70, 64, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GROVYLE', 50, 65, 45, 85, 65, 95, 128, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SCEPTILE', 70, 85, 65, 105, 85, 120, 192, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TORCHIC', 45, 60, 40, 70, 50, 45, 256, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('COMBUSKEN', 60, 85, 60, 85, 60, 55, 260, '{"Blaze", ""}', '{"FIRE", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BLAZIKEN', 80, 120, 70, 110, 70, 80, 12, '{"Blaze", ""}', '{"FIRE", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MUDKIP', 50, 70, 50, 50, 50, 40, 4, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MARSHTOMP', 70, 85, 70, 60, 70, 50, 8, '{"Torrent", ""}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SWAMPERT', 100, 110, 90, 85, 90, 60, 12, '{"Torrent", ""}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('POOCHYENA', 35, 55, 35, 30, 30, 35, 4, '{"Run Away", "Quick Feet"}', '{"DARK", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MIGHTYENA', 70, 90, 70, 60, 60, 70, 8, '{"Intimidate", "Quick Feet"}', '{"DARK", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ZIGZAGOON', 38, 30, 41, 30, 41, 60, 64, '{"Pickup", "Gluttony"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LINOONE', 78, 70, 61, 50, 61, 100, 128, '{"Pickup", "Gluttony"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WURMPLE', 45, 45, 35, 20, 30, 20, 1, '{"Shield Dust", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SILCOON', 50, 35, 55, 25, 25, 15, 32, '{"Shed Skin", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BEAUTIFLY', 60, 70, 50, 90, 50, 65, 768, '{"Swarm", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CASCOON', 50, 35, 55, 25, 25, 15, 32, '{"Shed Skin", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DUSTOX', 60, 50, 70, 50, 90, 65, 3072, '{"Shield Dust", ""}', '{"BUG", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LOTAD', 40, 30, 30, 40, 50, 30, 1024, '{"Swift Swim", "Rain Dish"}', '{"WATER", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LOMBRE', 60, 50, 50, 60, 70, 50, 2048, '{"Swift Swim", "Rain Dish"}', '{"WATER", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUDICOLO', 80, 70, 70, 90, 100, 70, 3072, '{"Swift Swim", "Rain Dish"}', '{"WATER", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SEEDOT', 40, 40, 50, 30, 30, 30, 16, '{"Chlorophyll", "Early Bird"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NUZLEAF', 70, 70, 40, 60, 40, 60, 8, '{"Chlorophyll", "Early Bird"}', '{"GRASS", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHIFTRY', 90, 100, 60, 90, 60, 80, 12, '{"Chlorophyll", "Early Bird"}', '{"GRASS", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TAILLOW', 40, 55, 30, 30, 30, 85, 64, '{"Guts", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SWELLOW', 60, 85, 60, 50, 50, 125, 128, '{"Guts", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WINGULL', 40, 30, 30, 55, 30, 85, 64, '{"Keen Eye", ""}', '{"WATER", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PELIPPER', 60, 50, 100, 85, 70, 65, 32, '{"Keen Eye", ""}', '{"WATER", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RALTS', 28, 25, 25, 45, 35, 40, 256, '{"Synchronize", "Trace"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KIRLIA', 38, 35, 35, 65, 55, 50, 512, '{"Synchronize", "Trace"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GARDEVOIR', 68, 65, 65, 125, 115, 80, 768, '{"Synchronize", "Trace"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SURSKIT', 40, 30, 32, 50, 52, 65, 64, '{"Swift Swim", ""}', '{"BUG", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MASQUERAIN', 70, 60, 62, 80, 82, 60, 1280, '{"Intimidate", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHROOMISH', 60, 40, 60, 40, 60, 35, 1, '{"Effect Spore", "Poison Heal"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BRELOOM', 60, 130, 80, 60, 60, 70, 8, '{"Effect Spore", "Poison Heal"}', '{"GRASS", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SLAKOTH', 60, 60, 60, 35, 35, 30, 1, '{"Truant", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VIGOROTH', 80, 80, 80, 55, 55, 90, 128, '{"Vital Spirit", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SLAKING', 150, 160, 100, 95, 65, 100, 3, '{"Truant", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NINCADA', 31, 45, 90, 30, 30, 40, 16, '{"Compound Eyes", ""}', '{"BUG", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NINJASK', 61, 90, 45, 50, 50, 160, 128, '{"Speed Boost", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHEDINJA', 1, 90, 45, 30, 30, 40, 2, '{"Wonder Guard", ""}', '{"BUG", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WHISMUR', 64, 51, 23, 51, 23, 28, 1, '{"Soundproof", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LOUDRED', 84, 71, 43, 71, 43, 48, 2, '{"Soundproof", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('EXPLOUD', 104, 91, 63, 91, 63, 68, 3, '{"Soundproof", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAKUHITA', 72, 60, 30, 20, 30, 25, 1, '{"Thick Fat", "Guts"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HARIYAMA', 144, 120, 60, 40, 60, 50, 2, '{"Thick Fat", "Guts"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AZURILL', 50, 20, 40, 20, 40, 20, 1, '{"Thick Fat", "Huge Power"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NOSEPASS', 30, 45, 135, 45, 90, 30, 16, '{"Sturdy", "Magnet Pull"}', '{"ROCK", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SKITTY', 50, 45, 45, 35, 35, 50, 64, '{"Cute Charm", "Normalize"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DELCATTY', 70, 65, 65, 55, 55, 70, 65, '{"Cute Charm", "Normalize"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SABLEYE', 50, 75, 75, 65, 65, 50, 20, '{"Keen Eye", "Stall"}', '{"DARK", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAWILE', 50, 85, 85, 55, 55, 50, 20, '{"Hyper Cutter", "Intimidate"}', '{"STEEL", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARON', 50, 70, 100, 40, 40, 30, 16, '{"Sturdy", "Rock Head"}', '{"STEEL", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LAIRON', 60, 90, 140, 50, 50, 40, 32, '{"Sturdy", "Rock Head"}', '{"STEEL", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AGGRON', 70, 110, 180, 60, 60, 50, 48, '{"Sturdy", "Rock Head"}', '{"STEEL", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MEDITITE', 30, 40, 55, 40, 55, 60, 64, '{"Pure Power", ""}', '{"FIGHTING", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MEDICHAM', 60, 60, 75, 60, 75, 80, 128, '{"Pure Power", ""}', '{"FIGHTING", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ELECTRIKE', 40, 45, 40, 65, 40, 65, 64, '{"Static", "Lightning Rod"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MANECTRIC', 70, 75, 60, 105, 60, 105, 128, '{"Static", "Lightning Rod"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PLUSLE', 60, 50, 40, 85, 75, 95, 64, '{"Plus", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MINUN', 60, 40, 50, 75, 85, 95, 64, '{"Minus", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VOLBEAT', 65, 73, 55, 47, 75, 85, 64, '{"Illuminate", "Swarm"}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ILLUMISE', 65, 47, 55, 73, 75, 85, 64, '{"Oblivious", "Tinted Lens"}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ROSELIA', 50, 60, 45, 100, 80, 65, 512, '{"Natural Cure", "Poison Point"}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GULPIN', 70, 43, 53, 43, 53, 40, 1, '{"Liquid Ooze", "Sticky Hold"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SWALOT', 100, 73, 83, 73, 83, 55, 2, '{"Liquid Ooze", "Sticky Hold"}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CARVANHA', 45, 90, 20, 65, 20, 65, 4, '{"Rough Skin", ""}', '{"WATER", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHARPEDO', 70, 120, 40, 95, 40, 95, 8, '{"Rough Skin", ""}', '{"WATER", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WAILMER', 130, 70, 35, 70, 35, 60, 1, '{"Water Veil", "Oblivious"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WAILORD', 170, 90, 45, 90, 45, 60, 2, '{"Water Veil", "Oblivious"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('NUMEL', 60, 60, 40, 65, 45, 35, 256, '{"Oblivious", "Simple"}', '{"FIRE", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CAMERUPT', 70, 100, 70, 105, 75, 40, 260, '{"Magma Armor", "Solid Rock"}', '{"FIRE", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TORKOAL', 70, 85, 140, 85, 70, 20, 32, '{"White Smoke", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SPOINK', 60, 25, 35, 70, 80, 60, 1024, '{"Thick Fat", "Own Tempo"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GRUMPIG', 80, 45, 65, 90, 110, 80, 2048, '{"Thick Fat", "Own Tempo"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SPINDA', 60, 60, 60, 60, 60, 60, 256, '{"Own Tempo", "Tangled Feet"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TRAPINCH', 45, 100, 45, 45, 45, 10, 4, '{"Hyper Cutter", "Arena Trap"}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VIBRAVA', 50, 70, 50, 50, 50, 70, 68, '{"Levitate", "Levitate"}', '{"GROUND", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FLYGON', 80, 100, 80, 80, 80, 100, 132, '{"Levitate", "Levitate"}', '{"GROUND", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CACNEA', 50, 85, 40, 85, 40, 35, 256, '{"Sand Veil", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CACTURNE', 70, 115, 60, 115, 60, 55, 260, '{"Sand Veil", ""}', '{"GRASS", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SWABLU', 45, 40, 60, 40, 75, 50, 1024, '{"Natural Cure", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ALTARIA', 75, 70, 90, 70, 105, 80, 2048, '{"Natural Cure", ""}', '{"DRAGON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ZANGOOSE', 73, 115, 60, 60, 60, 90, 8, '{"Immunity", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SEVIPER', 73, 100, 60, 100, 60, 65, 260, '{"Shed Skin", ""}', '{"POISON", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUNATONE', 70, 55, 65, 95, 85, 70, 512, '{"Levitate", ""}', '{"ROCK", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SOLROCK', 70, 95, 85, 55, 65, 70, 8, '{"Levitate", ""}', '{"ROCK", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BARBOACH', 50, 48, 43, 46, 41, 60, 1, '{"Oblivious", "Anticipation"}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WHISCASH', 110, 78, 73, 76, 71, 60, 2, '{"Oblivious", "Anticipation"}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CORPHISH', 43, 80, 65, 50, 35, 35, 4, '{"Hyper Cutter", "Shell Armor"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CRAWDAUNT', 63, 120, 85, 90, 55, 55, 8, '{"Hyper Cutter", "Shell Armor"}', '{"WATER", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BALTOY', 40, 40, 55, 40, 70, 55, 1024, '{"Levitate", ""}', '{"GROUND", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CLAYDOL', 60, 70, 105, 70, 120, 75, 2048, '{"Levitate", ""}', '{"GROUND", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LILEEP', 66, 41, 77, 61, 87, 23, 1024, '{"Suction Cups", ""}', '{"ROCK", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CRADILY', 86, 81, 97, 81, 107, 43, 2048, '{"Suction Cups", ""}', '{"ROCK", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ANORITH', 45, 95, 50, 40, 50, 75, 4, '{"Battle Armor", ""}', '{"ROCK", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARMALDO', 75, 125, 100, 70, 80, 45, 8, '{"Battle Armor", ""}', '{"ROCK", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FEEBAS', 20, 15, 20, 10, 55, 80, 64, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MILOTIC', 95, 60, 79, 100, 125, 81, 2048, '{"Marvel Scale", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CASTFORM', 70, 70, 70, 70, 70, 70, 1, '{"Forecast", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KECLEON', 60, 90, 70, 60, 120, 40, 1024, '{"Color Change", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHUPPET', 44, 75, 35, 63, 33, 45, 4, '{"Insomnia", "Frisk"}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BANETTE', 64, 115, 65, 83, 63, 65, 8, '{"Insomnia", "Frisk"}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DUSKULL', 20, 40, 90, 30, 90, 25, 1024, '{"Levitate", ""}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DUSCLOPS', 40, 70, 130, 60, 130, 25, 1040, '{"Pressure", ""}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TROPIUS', 99, 68, 83, 72, 87, 51, 2, '{"Chlorophyll", "Solar Power"}', '{"GRASS", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHIMECHO', 65, 50, 70, 95, 80, 65, 1280, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ABSOL', 65, 130, 60, 75, 60, 75, 8, '{"Pressure", "Super Luck"}', '{"DARK", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WYNAUT', 95, 23, 48, 23, 48, 23, 1, '{"Shadow Tag", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SNORUNT', 50, 50, 50, 50, 50, 50, 1, '{"Inner Focus", "Ice Body"}', '{"ICE", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GLALIE', 80, 80, 80, 80, 80, 80, 2, '{"Inner Focus", "Ice Body"}', '{"ICE", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SPHEAL', 70, 40, 50, 55, 50, 25, 1, '{"Thick Fat", "Ice Body"}', '{"ICE", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SEALEO', 90, 60, 70, 75, 70, 45, 2, '{"Thick Fat", "Ice Body"}', '{"ICE", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WALREIN', 110, 80, 90, 95, 90, 65, 3, '{"Thick Fat", "Ice Body"}', '{"ICE", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CLAMPERL', 35, 64, 85, 74, 55, 32, 16, '{"Shell Armor", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HUNTAIL', 55, 104, 105, 94, 75, 52, 20, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GOREBYSS', 55, 84, 105, 114, 75, 52, 512, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RELICANTH', 100, 90, 130, 45, 65, 55, 17, '{"Swift Swim", "Rock Head"}', '{"WATER", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUVDISC', 43, 30, 55, 40, 65, 97, 64, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BAGON', 45, 75, 60, 40, 30, 50, 4, '{"Rock Head", ""}', '{"DRAGON", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHELGON', 65, 95, 100, 60, 50, 50, 32, '{"Rock Head", ""}', '{"DRAGON", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SALAMENCE', 95, 135, 80, 110, 80, 100, 12, '{"Intimidate", ""}', '{"DRAGON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BELDUM', 40, 55, 80, 35, 60, 30, 16, '{"Clear Body", ""}', '{"STEEL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('METANG', 60, 75, 100, 55, 80, 50, 32, '{"Clear Body", ""}', '{"STEEL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('METAGROSS', 80, 135, 130, 95, 90, 70, 48, '{"Clear Body", ""}', '{"STEEL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('REGIROCK', 80, 100, 200, 50, 100, 50, 48, '{"Clear Body", ""}', '{"ROCK", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('REGICE', 80, 50, 100, 100, 200, 50, 3072, '{"Clear Body", ""}', '{"ICE", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('REGISTEEL', 80, 75, 150, 75, 150, 50, 1056, '{"Clear Body", ""}', '{"STEEL", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LATIAS', 80, 80, 90, 110, 130, 110, 3072, '{"Levitate", ""}', '{"DRAGON", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LATIOS', 80, 90, 80, 130, 110, 110, 768, '{"Levitate", ""}', '{"DRAGON", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KYOGRE', 100, 100, 90, 150, 140, 90, 768, '{"Drizzle", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GROUDON', 100, 150, 140, 100, 90, 90, 12, '{"Drought", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RAYQUAZA', 105, 150, 90, 150, 90, 95, 264, '{"Air Lock", ""}', '{"DRAGON", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('JIRACHI', 100, 100, 100, 100, 100, 100, 3, '{"Serene Grace", ""}', '{"STEEL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DEOXYS', 50, 150, 50, 150, 50, 150, 324, '{"Pressure", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TURTWIG', 55, 68, 64, 45, 55, 31, 4, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GROTLE', 75, 89, 85, 55, 65, 36, 20, '{"Overgrow", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TORTERRA', 95, 109, 105, 75, 85, 56, 24, '{"Overgrow", ""}', '{"GRASS", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHIMCHAR', 44, 58, 44, 58, 44, 61, 64, '{"Blaze", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MONFERNO', 64, 78, 52, 78, 52, 81, 320, '{"Blaze", ""}', '{"FIRE", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('INFERNAPE', 76, 104, 71, 104, 71, 108, 324, '{"Blaze", ""}', '{"FIRE", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PIPLUP', 53, 51, 53, 61, 56, 40, 256, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PRINPLUP', 64, 66, 68, 81, 76, 50, 512, '{"Torrent", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('EMPOLEON', 84, 86, 88, 111, 101, 60, 768, '{"Torrent", ""}', '{"WATER", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STARLY', 40, 55, 30, 30, 30, 60, 64, '{"Keen Eye", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STARAVIA', 55, 75, 50, 40, 40, 80, 128, '{"Intimidate", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STARAPTOR', 85, 120, 70, 50, 50, 100, 12, '{"Intimidate", ""}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BIDOOF', 59, 45, 40, 35, 40, 31, 1, '{"Simple", "Unaware"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BIBAREL', 79, 85, 60, 55, 60, 71, 8, '{"Simple", "Unaware"}', '{"NORMAL", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KRICKETOT', 37, 25, 41, 25, 41, 25, 16, '{"Shed Skin", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('KRICKETUNE', 77, 85, 51, 55, 51, 65, 8, '{"Swarm", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHINX', 45, 65, 34, 40, 34, 45, 4, '{"Rivalry", "Intimidate"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUXIO', 60, 85, 49, 60, 49, 60, 8, '{"Rivalry", "Intimidate"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUXRAY', 80, 120, 79, 95, 79, 70, 12, '{"Rivalry", "Intimidate"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BUDEW', 40, 30, 35, 50, 70, 55, 256, '{"Natural Cure", "Poison Point"}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ROSERADE', 60, 70, 55, 125, 105, 90, 768, '{"Natural Cure", "Poison Point"}', '{"GRASS", "POISON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CRANIDOS', 67, 125, 40, 30, 30, 58, 4, '{"Mold Breaker", ""}', '{"ROCK", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RAMPARDOS', 97, 165, 60, 65, 50, 58, 8, '{"Mold Breaker", ""}', '{"ROCK", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHIELDON', 30, 42, 118, 42, 88, 30, 16, '{"Sturdy", ""}', '{"ROCK", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BASTIODON', 60, 52, 168, 47, 138, 30, 32, '{"Sturdy", ""}', '{"ROCK", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BURMY', 40, 29, 45, 29, 45, 36, 1024, '{"Shed Skin", ""}', '{"BUG", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WORMADAM', 60, 59, 85, 79, 105, 36, 2048, '{"Anticipation", ""}', '{"BUG", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MOTHIM', 70, 94, 50, 94, 50, 66, 260, '{"Swarm", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('COMBEE', 30, 30, 42, 30, 42, 70, 64, '{"Honey Gather", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('VESPIQUEN', 70, 80, 102, 80, 102, 40, 1040, '{"Pressure", ""}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PACHIRISU', 60, 45, 70, 45, 90, 95, 64, '{"Run Away", "Pickup"}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BUIZEL', 55, 65, 35, 60, 30, 85, 64, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FLOATZEL', 85, 105, 55, 85, 50, 115, 128, '{"Swift Swim", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHERUBI', 45, 35, 45, 62, 53, 35, 256, '{"Chlorophyll", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHERRIM', 70, 60, 70, 87, 78, 85, 512, '{"Flower Gift", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHELLOS', 76, 48, 48, 57, 62, 34, 1, '{"Sticky Hold", "Storm Drain"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GASTRODON', 111, 83, 68, 92, 82, 39, 2, '{"Sticky Hold", "Storm Drain"}', '{"WATER", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AMBIPOM', 75, 100, 66, 60, 66, 115, 128, '{"Technician", "Pickup"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DRIFLOON', 90, 50, 34, 60, 44, 70, 1, '{"Aftermath", "Unburden"}', '{"GHOST", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DRIFBLIM', 150, 80, 44, 90, 54, 80, 2, '{"Aftermath", "Unburden"}', '{"GHOST", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BUNEARY', 55, 66, 44, 44, 56, 85, 64, '{"Run Away", "Klutz"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LOPUNNY', 65, 76, 84, 54, 96, 105, 128, '{"Cute Charm", "Klutz"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MISMAGIUS', 60, 60, 60, 105, 105, 105, 1280, '{"Levitate", ""}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HONCHKROW', 100, 125, 52, 105, 52, 71, 8, '{"Insomnia", "Super Luck"}', '{"DARK", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GLAMEOW', 49, 55, 42, 42, 37, 85, 64, '{"Limber", "Own Tempo"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PURUGLY', 71, 82, 64, 64, 59, 112, 128, '{"Thick Fat", "Own Tempo"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHINGLING', 45, 30, 50, 65, 50, 45, 256, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('STUNKY', 63, 63, 47, 41, 41, 74, 64, '{"Stench", "Aftermath"}', '{"POISON", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SKUNTANK', 103, 93, 67, 71, 61, 84, 2, '{"Stench", "Aftermath"}', '{"POISON", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BRONZOR', 57, 24, 86, 24, 86, 23, 16, '{"Levitate", "Heatproof"}', '{"STEEL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BRONZONG', 67, 89, 116, 79, 116, 33, 1040, '{"Levitate", "Heatproof"}', '{"STEEL", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('BONSLY', 50, 80, 95, 10, 45, 10, 16, '{"Sturdy", "Rock Head"}', '{"ROCK", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MIME JR.', 20, 25, 45, 70, 90, 60, 1024, '{"Soundproof", "Filter"}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HAPPINY', 100, 5, 5, 15, 65, 30, 1, '{"Natural Cure", "Serene Grace"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CHATOT', 76, 65, 45, 92, 42, 91, 4, '{"Keen Eye", "Tangled Feet"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SPIRITOMB', 50, 92, 108, 92, 108, 35, 1040, '{"Pressure", ""}', '{"GHOST", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GIBLE', 58, 70, 45, 40, 45, 42, 4, '{"Sand Veil", ""}', '{"DRAGON", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GABITE', 68, 90, 65, 50, 55, 82, 8, '{"Sand Veil", ""}', '{"DRAGON", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GARCHOMP', 108, 130, 95, 80, 85, 102, 12, '{"Sand Veil", ""}', '{"DRAGON", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MUNCHLAX', 135, 85, 40, 40, 85, 5, 1, '{"Pickup", "Thick Fat"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RIOLU', 40, 70, 40, 35, 40, 60, 4, '{"Steadfast", "Inner Focus"}', '{"FIGHTING", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUCARIO', 70, 110, 70, 115, 70, 90, 260, '{"Steadfast", "Inner Focus"}', '{"FIGHTING", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HIPPOPOTAS', 68, 72, 78, 38, 42, 32, 16, '{"Sand Stream", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HIPPOWDON', 108, 112, 118, 68, 72, 47, 32, '{"Sand Stream", ""}', '{"GROUND", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SKORUPI', 40, 50, 90, 30, 55, 65, 16, '{"Battle Armor", "Sniper"}', '{"POISON", "BUG"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DRAPION', 70, 90, 110, 60, 75, 95, 32, '{"Battle Armor", "Sniper"}', '{"POISON", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CROAGUNK', 48, 61, 40, 61, 40, 50, 4, '{"Anticipation", "Dry Skin"}', '{"POISON", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TOXICROAK', 83, 106, 65, 86, 65, 85, 8, '{"Anticipation", "Dry Skin"}', '{"POISON", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CARNIVINE', 74, 100, 72, 90, 72, 46, 8, '{"Levitate", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FINNEON', 49, 49, 56, 49, 61, 66, 64, '{"Swift Swim", "Storm Drain"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LUMINEON', 69, 69, 76, 69, 86, 91, 128, '{"Swift Swim", "Storm Drain"}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MANTYKE', 45, 20, 50, 60, 120, 50, 1024, '{"Swift Swim", "Water Absorb"}', '{"WATER", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SNOVER', 60, 62, 50, 62, 60, 40, 4, '{"Snow Warning", ""}', '{"GRASS", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ABOMASNOW', 90, 92, 75, 92, 85, 60, 260, '{"Snow Warning", ""}', '{"GRASS", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('WEAVILE', 70, 120, 65, 45, 85, 125, 68, '{"Pressure", "Pressure"}', '{"DARK", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGNEZONE', 70, 70, 115, 130, 90, 60, 768, '{"Magnet Pull", "Sturdy"}', '{"ELECTRIC", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LICKILICKY', 110, 85, 95, 80, 95, 50, 3, '{"Own Tempo", "Oblivious"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('RHYPERIOR', 115, 140, 130, 55, 55, 40, 12, '{"Lightning Rod", "Solid Rock"}', '{"GROUND", "ROCK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TANGROWTH', 100, 100, 125, 110, 50, 50, 32, '{"Chlorophyll", "Leaf Guard"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ELECTIVIRE', 75, 123, 67, 95, 85, 95, 12, '{"Motor Drive", ""}', '{"ELECTRIC", "ELECTRIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAGMORTAR', 75, 95, 67, 125, 95, 83, 768, '{"Flame Body", ""}', '{"FIRE", "FIRE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('TOGEKISS', 85, 50, 95, 120, 115, 80, 1536, '{"Hustle", "Serene Grace"}', '{"NORMAL", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('YANMEGA', 86, 76, 86, 116, 56, 95, 8, '{"Speed Boost", "Tinted Lens"}', '{"BUG", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('LEAFEON', 65, 110, 130, 60, 65, 95, 32, '{"Leaf Guard", "Leaf Guard"}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GLACEON', 65, 60, 110, 130, 95, 65, 512, '{"Snow Cloak", "Snow Cloak"}', '{"ICE", "ICE"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GLISCOR', 75, 95, 125, 45, 75, 95, 32, '{"Hyper Cutter", "Sand Veil"}', '{"GROUND", "FLYING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MAMOSWINE', 110, 130, 80, 70, 60, 80, 12, '{"Oblivious", "Snow Cloak"}', '{"ICE", "GROUND"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PORYGON-Z', 85, 80, 70, 135, 75, 90, 768, '{"Adaptability", "Download"}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GALLADE', 68, 125, 65, 65, 115, 80, 12, '{"Steadfast", "Steadfast"}', '{"PSYCHIC", "FIGHTING"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PROBOPASS', 60, 55, 145, 75, 150, 40, 2064, '{"Sturdy", "Magnet Pull"}', '{"ROCK", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DUSKNOIR', 45, 100, 135, 65, 135, 45, 2064, '{"Pressure", ""}', '{"GHOST", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('FROSLASS', 70, 80, 70, 80, 70, 110, 128, '{"Snow Cloak", "Snow Cloak"}', '{"ICE", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ROTOM', 50, 50, 77, 95, 77, 91, 320, '{"Levitate", ""}', '{"ELECTRIC", "GHOST"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('UXIE', 75, 75, 130, 75, 130, 95, 1056, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MESPRIT', 80, 105, 105, 105, 105, 80, 1284, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('AZELF', 75, 125, 70, 125, 70, 115, 264, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DIALGA', 100, 120, 120, 150, 100, 90, 768, '{"Pressure", ""}', '{"STEEL", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PALKIA', 90, 120, 100, 150, 120, 100, 768, '{"Pressure", ""}', '{"WATER", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('HEATRAN', 91, 90, 106, 130, 106, 77, 768, '{"Flash Fire", ""}', '{"FIRE", "STEEL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('REGIGIGAS', 110, 160, 110, 80, 110, 100, 12, '{"Slow Start", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('GIRATINA', 150, 100, 120, 100, 120, 90, 3, '{"Pressure", ""}', '{"GHOST", "DRAGON"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('CRESSELIA', 120, 70, 120, 75, 130, 85, 3072, '{"Levitate", ""}', '{"PSYCHIC", "PSYCHIC"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('PHIONE', 80, 80, 80, 80, 80, 80, 1, '{"Hydration", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('MANAPHY', 100, 100, 100, 100, 100, 100, 3, '{"Hydration", ""}', '{"WATER", "WATER"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('DARKRAI', 70, 90, 90, 135, 90, 125, 576, '{"Bad Dreams", ""}', '{"DARK", "DARK"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('SHAYMIN', 100, 100, 100, 100, 100, 100, 3, '{"Natural Cure", ""}', '{"GRASS", "GRASS"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('ARCEUS', 120, 120, 120, 120, 120, 120, 3, '{"Multitype", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('Egg', 10, 10, 10, 10, 10, 10, 0, '{"", ""}', '{"NORMAL", "NORMAL"}');

INSERT INTO pokemons (
				name, base_hp, base_attack, base_defense, base_sp_attack, 
				base_sp_defense, base_speed, ev_yield, abilities, types
			) VALUES ('Bad Egg', 10, 10, 10, 10, 10, 10, 0, '{"", ""}', '{"NORMAL", "NORMAL"}');