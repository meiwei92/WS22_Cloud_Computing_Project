# WS22_Cloud_Computing_Project
## Setup
### Create Mongo DB Dockers
The PiggyMetrics Project doesn't provide the neccessary setup to connect a mongodb exporter to it. Therefore we created our own container. This must be created vi the folowing command

    docker build -t piggy_mongodb:exportable .

The command must be executed from within the "mongodb" subfolder.
### Change permissions on the grafana subfolder
The grafana container runs with the user 472. Since it can't be guaranteed that a user with this id exists on our system we must enable all users to read and write there.

    chmod 766 -R ./grafana

 ## Microservice Performance Surveillance with Prometheus and Grafana
 
 In order to set up the PiggyMetrics docker cluster with all mongodb-exporters and cadvisor, run
 
    docker-compose up
    
in the same directory where the docker-compose file is located. After all SpringBoot applications started one can inspect the different services
Piggymetrics

    localhost:80
    
Prometheus interface

    localhost:9090
    
Grafana Dashboard (login: admin/admin)

    localhost:3000
    
account service mongo db exporter metrics

    localhost:9216/metrics
    
authentication service mongo db exporter metrics

    localhost:9316/metrics
    
statistics service mongo db exporter metrics

    localhost:9416/metrics
    
notification service mongo db exporter metrics

    localhost:9516/metrics

## Research Summary
- [Microservice List](https://github.com/davidetaibi/Microservices_Project_List)
- [Prometheus Docs](https://prometheus.io/docs/introduction/overview/)
- [Grafana Docs](https://grafana.com/docs/grafana/latest/)
- [MongoDB-Exporter](https://github.com/percona/mongodb_exporter)
- [CAdvisor Prometheus Extension](https://prometheus.io/docs/guides/cadvisor/)
- [Prometheus Exporters](https://prometheus.io/docs/instrumenting/exporters/)

## Lessons-Learned and Caveats
- MongoDB Setup may not contain necessary configuration to simply add exporters due to missing permissions and credentials
- Fully understand a project before working with it
- Check functionality beforehand

