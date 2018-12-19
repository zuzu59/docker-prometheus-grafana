# Prometheus & Grafana sur Docker avec push en curl des datas

Système complet de Prometheus/Grafana avec gateway pour pouvoir envoyer des données à Prometheus via un simple 'curl'.

##Utilisation
Simplement faire:

```
./start.sh
```

Après, il faut démarrer l'exemple de générateur de données pour faire les tests du système avec:

```
./example.sh
```

Et enfin configurer la data source de Grafana au moyen de la copie d'écran:

```
grafana_configuration_data_source.png
```

et finalement configurer un petit dashboard au moyen de la copie d'écran:

```
grafana_configuration_dashboard.png  
```

##Et la suite ?
Ben, après faut regarder comment cela fonctionne dans le fichier:

```
example.sh
```


zf181219.1659
