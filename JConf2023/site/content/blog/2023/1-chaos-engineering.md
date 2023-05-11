title=Chaos Engineering: Injecting failure for building resiliency in Spring Java systems
date=2023-08-23
type=post
tags=Server side
status=draft
category=Server side
twitter=yurynino
~~~~~~

## Title

Chaos Engineering: Injecting failure for building resiliency in Spring Java systems

## Presenter

**Yuri Niño**

Software Engineer with 6+ years of experience designing, implementing and managing the development of software applications using agile methodologies such as scrum and kanban. 2+ years of hands-on experience supporting, automating and optimizing mission-critical deployments, leveraging configuration management, CI/CD, and DevOps processes. Experience with on-premise and cloud architectures and foundations both on the coding and deploying systems.

She has worked as a Professor of Software Engineering and Researcher. She is interested in solving performance, resilience and reliability issues, using chaos engineering and studying the human errors, safety on systems and lack of monitoring and observability.


## Social Media

- https://www.linkedin.com/in/yury-ni%C3%B1o-roa-91752113/
- https://medium.com/@yury.nino.roa

## Description

In a distributed world we all depend on the distributed systems more than ever. As these systems become more complex, the failures are much harder to predict. Chaos Engineering introduces the injection of failures as a discipline for building confidence in the resilience capability of the systems.

### Introduction

The presentation starts answering the question: why the world needs more resilient systems? Tech industries such as medicine, transport, finance, education, and environment industries have a thing in common: they require high availability, so their primary concern is resilience. Doing chaos engineering or in other words, experimenting with the distributed systems to find and then fix its weaknesses is one of the best ways to increase uptime, reliability, speed, and security of the software systems.

### History

A timeline with the milestones in the evolution of Chaos Engineering is presented. The companies, representants, and achievements are analyzed in order to shape the principles. [Chaos Engineering Timeline]

### Principles

- Start by defining ‘steady state’ as some measurable output of a system that indicates normal behavior.
- Hypothesize that this steady state will continue in both the control group and the experimental group.
- Introduce variables that reflect real-world events like servers that crash, hard drives that malfunction, network connections that are severed, etc.
- Try to disprove the hypothesis by looking for a difference in steady state between the control group and the experimental group.

### Methodology

This part explains how to run experiments in production and how to automate them to run continuously. Some chaos engineering experiments are discussed such as simulating the failure of a datacenter, injecting latency between services, randomly causing exceptions, changing time travel, emulating I/O errors, and database attacks. The phases, taken from https://blog.codecentric.de/en/2018/07/chaos-engineering/ for doing chaos engineering are discussed. [Chaos Engineering Phases]

### Available Tools

Some tools such as chaos monkey and gremling are presented. An example inspired by the chaos monkey tool, using Spring Boot, is explained and executed. The results are discussed and interesting behaviors are analyzed.

### Conclusion

Final remarks are presented and metrics to collect for monitoring, incident management, being on-call and tracking down an issue are generated.
