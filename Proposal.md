# Project Proposal

## Project Contributors
- Weikl, Michael
- Bergsmann, Severin

## Definition and Scope

We take an open source microservice based
project base and add some metrics and health
checks using Prometheus. All metrics time-series
are made visible in a Grafana dashboard. We only do 
the setup and adaption of the consecutive Microservices
and not the implementation of the Microservices themselves.
Setup refers to creating a Dockerfile for simple deployment.
Adaption refers to adding metrics endpoint in case a Microservice
does not expose one.

## Data
- Dockerfile including all Microservices,
- Deployment.yml
- Prometheus.yml

## Milestones
- 27.12.22 Setup of base docker containers (Severin)
- 31.12.22 Setup of kubernetes environment on top (Michael)
- 06.01.23 Setup of Prometheus and first health check (Severin)
- 10.01.23 Setup of Grafana GUI to display metrics time-series (Michael)
