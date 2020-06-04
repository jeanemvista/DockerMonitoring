# Docker Monitoring
Mise en place des outils pour monitorer des Docker:
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

# Prometheus

# Grafana