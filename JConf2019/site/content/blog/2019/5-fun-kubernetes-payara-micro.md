title=Fun with Kubernetes and Payara Micro 5
date=2019-08-23
type=post
tags=Server side
status=published
category=Server side
twitter=fabturizo
img=fabio.jpg
~~~~~~

## Title

Fun with Kubernetes and Payara Micro 5

## Presenter

**Fabio Andrés Turizo Correa**

Software Engineer offering over 9 years in the IT industry with a focus on software architecture and development. Oracle Certified Professional and Specialist in Java SE and EE platforms. Currently working as part of the service team of Payara Services Limited and also part of the Toptal network of freelancers as well.

## Social Media

* https://www.linkedin.com/in/fturizo/

## Description

Usually, when implementing a scalable microservices architecture, one of the aspects that is the harder to configure is the orchestration of the different services and components that compose the entire infrastructure. When using Docker containers there are multiple choices on how to configure this orchestration, being Kubernetes one of the most popular choices due to how robust and extensible the tool is. Kubernetes (KB8) is an open-source system for managing containerized applications across multiple hosts, providing basic mechanisms for deployment, maintenance and scaling applications, while managing all networking and discovery aspects saving you valuable time and effort. Payara Micro, thanks to its dynamic clustering mechanism implemented using Hazelcast, allows Java EE applications to automatically join a Kubernetes cluster thanks to its autodiscovery features!

Thanks to this, it’s possible to build a reliable architecture of Payara Micro instances that live inside Docker containers and managed by a KB8 cluster. When in need to scale up or down this infrastructure, simply instruct your cluster to do it and everything should be handled seamlessly.

This talk will focus on covering all of the components of this infrastructure:

* Payara Micro 5.192
* Kubernetes 1.11+
* Hazelcast IMDG 3.12

And showcase a sample production scenario that displays how robust an elastic architecture is.

Participants will need knowledge of the following concepts:

* Java EE / Jakarta EE (Intermediate)
* Docker (Intermediate)
* Kubernetes (Beginner)
* Microservices Architectures.

Requirements for the talk:

* A stable Internet Connection.
