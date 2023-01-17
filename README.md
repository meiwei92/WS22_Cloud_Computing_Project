# WS22_Cloud_Computing_Project
## Setup
### Create Mongo DB Dockers
The PiggyMetrics Project doesn't provide the neccessary setup to connect a mongodb exporter to it. Therefore we created our own container. This must be created vi the folowing command

docker build -t piggy_mongodb:exportable .

The command must be executed from within the "mongodb" subfolder.
### Change permissions on the grafana subfolder
The grafana container runs with the user 472. Since it can't be guaranteed that a user with this id exists on our system we must enable all users to read and write there.

chmod 766 -R ./grafana


 ## Microservice Performance Surveillance with Prometheus

## Research Summary
- [Microservice List](https://github.com/davidetaibi/Microservices_Project_List)

## Tutorial

## Lessons-Learned and Caveats
