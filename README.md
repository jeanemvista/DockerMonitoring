# Docker Monitoring
Mise en place des outils pour monitorer des conteneurs Docker:
* cadvisor
* Prometheus
* Grafana

# Cadvisor

Il faut installer cadvisor sur chacun des serveurs ayant docker. Celui-ci s'intalle dans un container. Pour lancer Cadvisor, 2 propositions en fonction de votre installation docker :
## En service

```
$ sh cadvisor-service.sh
```

## En container

```
$ sh cadvisor-container.sh
```

# Prometheus et Grafana :

Un fichier docker-compose est disponible dans PrometheusGrafana. Ajouter dans le fichier prometheus.yml les serveurs cadvisor installés :

```
  - job_name: 'cadvisor'
    scrape_interval: 5s
    static_configs:
      - targets: ['<adresse du server cadvisor>:8080']
```

# Dashboard Grafana
*  https://grafana.com/grafana/dashboards/11600