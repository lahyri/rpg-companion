CREATE TABLE IF NOT EXISTS users(
    "id" SERIAL,
    "name" VARCHAR(64),
    "email" VARCHAR(64),
    "password" VARCHAR(255),
    "avatar" VARCHAR(255) 
);

CREATE TABLE IF NOT EXISTS characters(
    "id" SERIAL,
    "name" VARCHAR(64),
    "level" INTEGER,
    "background" VARCHAR(64),
    "alignment" VARCHAR(15),
    "class" INTEGER,

    "armor_class" INTEGER,
    "total_hp" INTEGER,
    "current_hp" INTEGER,
    "temp_hp" INTEGER,
    "hit_dice" INTEGER,
    "total_hit_die" INTEGER,
    "current_hit_dice" INTEGER,

    "personality_traits" JSONB,
    "ideals" JSONB,
    "flaws" JSONB,
    "bonds" JSONB,

    "death_saves_failures" INTEGER,
    "death_saves_successes" INTEGER,

    "inspiration" BOOLEAN DEAFULT FALSE,

    "pp" INTEGER,
    "gp" INTEGER,
    "ep" INTEGER,
    "sp" INTEGER,
    "cp" INTEGER
);

CREATE TABLE IF NOT EXISTS character_attributes(
    "id" SERIAL
    "character_id" INTEGER,
    "str" INTEGER,
    "dex" INTEGER,
    "con" INTEGER,
    "int" INTEGER,
    "wis" INTEGER,
    "cha" INTEGER,

    "skills_proficiencies" JSONB
);

CREATE TABLE IF NOT EXISTS character_attack(
    "id" SERIAL,
    "attribute" CHAR(3),
    "modificator" INTEGER,
    "proficient" BOOLEAN,
    "damage" JSONB,
    "damage_type" VARCHAR(32)
);