

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

create table fandom_entities (
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

create table fandom_properties (
    id serial primary key,
    object_id varchar(255) not null,
    name varchar(255) not null,
    value varchar(255) not null,
    description text not null,
    parent varchar(255) not null,
    created_at timestamp default current_timestamp
);

grant all privileges on table fandom_properties to ontology_rw;
grant all privileges on sequence fandom_properties_id_seq to ontology_rw;
grant select on table fandom_properties to ontology_ro;
