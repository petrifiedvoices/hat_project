# Shapefiles

This document specifies the contents of the hat_project/Shapefiles folder.

## Folder ```Cities```

- Buffer_zones_around_major_cities: contains buffer zones of varying sizes (20, 40, 50 km) around the major administrative centres of the region (see shapefile Manually_Created_Roman_major_settlements). The folder also contains Delaunay and Voronoi polygons of the same shapefile (Manually_Created_Roman_major_settlements), buffer zone around Philippopolis (20, 30, 40, 50 , 60 km around Philippopolis).

- Manually_Created_Roman_major_settlements: contains major administrative centres of the area of the Roman period, manually created from Google Maps based on the known location of ancient sites. Check against the Pleiades.

## Folder ```HAT_produced_shapefiles``` 

The source of truth of geospatial data is located in the ```All_inscriptions_9Nov2016``` folder.

This folder contains shapefiles of all inscriptions based on the exported dataset from 9 Nov 2016 (see hat/project/R/data/HAT_all_inscriptions_9Nov2016.xlsx tab QGIS export) and the respective subsets (Funerary inscriptions, Dedicatory inscriptions, Private inscriptions, Public inscriptions and some further specialised queries, such as Parodeita inscriptions).

This folder also contains shapefiles of Production centres of urban and non-urban character as their were created from the clustering of inscriptions (places of high concentrations of inscriptions).

```HAT_research_area``` specifies the research area of the HAT project, where the dataset is coming from.


## Folder ```Roads``` 

- BarringtonAtlas_roads: contains the shapefile of Roman roads as published by Pleiades project in 2014. This represents a digital version of the Roman road network published by the Barington Atlas of the Roman world. 

- Buffer_zones_around_roads_BA: contains shapefiles with varying buffer zones around the Barington Atlas road network, 5 km, 10 km, 20 km buffer.