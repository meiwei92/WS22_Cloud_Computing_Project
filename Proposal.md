# Project Proposal

## Project Contributors
- Weikl, Michael
- Bergsmann, Severin

## Definition and Scope

We will take the GoogleCoudPlatform [Microservices-Demo](https://github.com/GoogleCloudPlatform/microservices-demo) as an open source 
microservice based project as the base of our project. 
We will add some metrics and health
checks using Prometheus. All metrics time-series
are made visible in a Grafana dashboard. We only do 
the setup and adaption of the consecutive Microservices
and not the implementation of the Microservices themselves.
Setup refers to creating a Dockerfile for simple deployment.
Adaption refers to adding metrics endpoint in case a Microservice
does not expose one.

### Architecture of Demo-Project (Online Boutique)
**Online Boutique** is composed of 11 microservices written in different
languages that talk to each other over gRPC.

[![Architecture of
microservices](./docs/architecture-diagram.png)](./docs/architecture-diagram.png)

| Service                                              | Language      | Description                                                                                                                       |
| ---------------------------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| frontend                           | Go            | Exposes an HTTP server to serve the website. Does not require signup/login and generates session IDs for all users automatically. |
| cartservice                    | C#            | Stores the items in the user's shopping cart in Redis and retrieves it.                                                           |
| productcatalogservice | Go            | Provides the list of products from a JSON file and ability to search products and get individual products.                        |
| currencyservice          | Node.js       | Converts one money amount to another currency. Uses real values fetched from European Central Bank. It's the highest QPS service. |
| paymentservice              | Node.js       | Charges the given credit card info (mock) with the given amount and returns a transaction ID.                                     |
| shippingservice             | Go            | Gives shipping cost estimates based on the shopping cart. Ships items to the given address (mock)                                 |
| emailservice                   | Python        | Sends users an order confirmation email (mock).                                                                                   |
| checkoutservice           | Go            | Retrieves user cart, prepares order and orchestrates the payment, shipping and the email notification.                            |
| recommendationservice | Python        | Recommends other products based on what's given in the cart.                                                                      |
| adservice                   | Java          | Provides text ads based on given context words.                                                                                   |
| loadgenerator                | Python/Locust | Continuously sends requests imitating realistic user shopping flows to the frontend.                                              |

## Data
- Dockerfile including all Microservices,
- Deployment.yml
- Prometheus.yml

## Milestones
- 27.12.22 Setup of base docker containers (Severin)
- 31.12.22 Setup of kubernetes environment on top (Michael)
- 06.01.23 Setup of Prometheus and first health check (Severin)
- 10.01.23 Setup of Grafana GUI to display metrics time-series (Michael)
- 12.01.23 Final Readme.md (Severin & Michael)
