

create table fandom_pages (
    id serial primary key,
    object_id varchar(255) not null,
    game_name varchar(255) not null,
    game_url varchar(255) not null,
    page_name varchar(255) not null,
    page_url varchar(255) not null,
    content text not null,
    created_at timestamp default current_timestamp    
);

grant all privileges on table fandom_pages to ontology_rw;
grant all privileges on sequence fandom_pages_id_seq to ontology_rw;
grant readonly on table fandom_pages to ontology_ro;

create table fandom_entities_clean (
    id serial primary key,
    object_id varchar(255) not null,
    name varchar(255) not null,
    class varchar(255) not null,
    subclass varchar(255),
    description text not null,
    created_at timestamp default current_timestamp
);

grant all privileges on table fandom_entities to ontology_rw;
grant all privileges on sequence fandom_entities_id_seq to ontology_rw;
grant select on table fandom_entities to ontology_ro;

create table fandom_properties_clean (
    id serial primary key,
    object_id varchar(255) not null,
    property_name varchar(255) not null,
    description text not null,
    target_entity varchar(255) not null,
    target_class varchar(255) not null,
    target_superclass varchar(255) not null,
    created_at timestamp default current_timestamp
);


grant all privileges on table fandom_properties to ontology_rw;
grant all privileges on sequence fandom_properties_id_seq to ontology_rw;
grant select on table fandom_properties to ontology_ro;


drop table fandom_classes;
create table fandom_classes (
    id serial primary key,
    class varchar(255) not null,
    description text null,
    subclassof int,
    created_at timestamp default current_timestamp
);

grant all privileges on table fandom_classes to ontology_rw;
grant all privileges on sequence fandom_classes_id_seq to ontology_rw;
grant select on table fandom_classes to ontology_ro;

drop table if exists fandom_properties;
create table fandom_properties (
    id serial primary key,
    property varchar(255) not null,
    description text null,
    subpropertyof int,
    created_at timestamp default current_timestamp
);


update fandom_classes
set subclassof = classes.id
from (
    select distinct fe.class, c.id, fe.subclass
    from fandom_entities_clean fe
            join fandom_classes c on c.class = fe.class
    order by fe.class
) as classes where fandom_classes.class = classes.subclass
;


create table metacritic_pages (
    object_id text primary key,
    title text,
    score int,
    platforms jsonb,
    release_date date,
    developers jsonb,
    publisher text,
    genres jsonb
);

grant all privileges on table metacritic_pages to ontology_rw;
grant all privileges on sequence metacritic_pages_id_seq to ontology_rw;
grant readonly on table metacritic_pages to ontology_ro;