# Project Proposal

## Project Contributors
- Weikl, Michael
- Bergsmann, Severin

## Definition and Scope

We will take the [Piggy Metrics](https://github.com/sqshq/piggymetrics) as an open source 
microservice based project as the base of our project. 
We will add some metrics and health
checks using Prometheus. All metrics time-series
are made visible in a Grafana dashboard. We only do 
the setup and adaption of the consecutive Microservices
and not the implementation of the Microservices themselves.
Setup refers to creating a Dockerfile for simple deployment.
Adaption refers to adding metrics endpoint in case a Microservice
does not expose one.

### Architecture of Piggy Metrics

Piggy Metrics is composed of three microservices deployable via Spring Boot, Spring Cloud and Docker.
All of them are independently deployable applications.
The features are account service, statistics service and notification service.
**Account Service** deals with general input logic and validation: incomes/expenses items, savings and account settings.
**Statistics Service** calculates major statistics parameters and captures time series for each account.
**Notification Service** stores user contact information and notification settings. A scheduled worker collects required information from other services and sends e-mail messages to subscribed customers.

![image](https://user-images.githubusercontent.com/29523118/208733692-89995945-6a30-41c6-ac48-1602512b71f8.png)

![image](https://user-images.githubusercontent.com/29523118/208733840-3179522f-9da6-49c1-a323-f69e3166f144.png)

## Metrics
TODO

## Deployment Architecture
Local Docker Cluster (using docker-compose)

## Prometheus and Grafana
We use those two frameworks for fetching and displaying metrics of the microservice architecture. Prometheus fetches specific metrics from exposed endpoints on the consecutive microservice containers and Grafana displays the collected time-series metrics.

## Data
- Dockerfile including all Microservices
- Deployment.yml
- Prometheus.yml

## Milestones
- 27.12.22 Setup of base docker containers (Severin)
- 31.12.22 Setup Metric endpoints (Michael)
- 06.01.23 Setup of Prometheus and first health check (Severin)
- 10.01.23 Setup of Grafana GUI to display metrics time-series (Michael)
- 12.01.23 Final Readme.md (Severin & Michael)
