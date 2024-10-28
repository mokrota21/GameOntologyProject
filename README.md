# GameOntology Final Project Report

Overview of the outputs for the final project in Knowledge and Data, a 2nd year course in Bachelor - Artificial Intelligence program at the Vrije Universiteit Amsterdam.

## Contributors
- Jan Czarnecki
- Erbol Esengulov
- Sixuan Dou
- Aleksey Martynyuk

## Final Report

You an find the fina lreport in `Game_Ontology_Final_Report.pdf` file.


## Notebook files

### Scrapig
- metacritic_scrapper.ipynb
- steamdb_scraping.ipynb
- fandom_links_scrapper.ipynb
- fandom_data_scrapping.ipynb
- fandom_extract_infobox_raw.ipynb
- write_to_db.ipynb (requires .env file containing database credentials)
- tables.sql - contains DDL for tables that store scraped and inferred data

### Ontology Engineering

- extract_meaning.ipynb
- fandom_clustering.ipynb
- organize_ontology_classes.ipynb
- organize_ontology_properties.ipynb
- property_clustering.ipynb
- property_embeddings_pgvector.ipynb

(all require .env file containing database credentials)

### Populating knowledge graph

- populate_graph.ipynb


## Turtle files

- fandom_final.ttl
- metacritic_final.ttl
- steamdb_final.ttl
- fandom_mc_combined.ttl


## Vizualization
- sparqlqueries.ipynb

#### Interactive embedding viz
- property_embeddings_plotly.ipynb

For an interactive vizualization of property embedding by class using plotly, open the file `game_ontology_property_embeddings.html` in your browser.





