title=Fun with Kubernetes and Payara Micro 5
date=2018-10-02
type=draft
tags=Tools
status=published
img=fabio.jpg
category=Tools
~~~~~~


## Title 

Fun with Kubernetes and Payara Micro 5

## Presenter

Fabio Andrés Turizo Correa

## Social Media
* https://www.linkedin.com/in/fturizo/
* https://twitter.com/fabturizo

## Description

Usually, when implementing a scalable microservices architecture, one of the aspects that is the harder to configure is the orchestration of the different services and components that compose the entire infrastructure. When using Docker containers there are multiple choices on how to configure this orchestration, being Kubernetes one of the most popular choices due to how robust and extensible the tool is. [Kubernetes](https://kubernetes.io/) (**KB8**) is an open source system for managing containerized applications across multiple hosts, providing basic mechanisms for deployment, maintenance and scaling applications, while managing all networking and discovery aspects saving you valuable time and effort. Payara Micro, thanks its dynamic clustering mechanism implemented using [Hazelcast](https://hazelcast.org/), allows Java EE applications to automatically join a Kubernetes cluster thanks to its autodiscovery features!

Thanks to this, it's possible to build a reliable architecture of Payara Micro instances that live inside Docker containers and managed by a KB8 cluster. When in need to scale up or down this infrastructure, simply instruct your cluster to do it and everything should be handled seamessly.

This talk will focus on covering all of the components of this infrastructure:

* `Payara Micro 5.183`
* `Kubernetes v1.1x`
* `Hazelcast IMDG 3.10`

And showcase a sample production scenario that displays how robust an elastic architecture is.

## Bio(s)

Software Engineer offering over 8 years in the IT industry with a focus on software architecture and development. Oracle Certified Professional and Specialist in Java SE and EE platforms. Currently working as part of the service team of Payara Services Limited and also part of the Toptal freelance network as well.

### Explain to a 5-year-old your job role:

Well: "I help my customers when their computers don't do what they want, so I usually talk a lot with them to understand why their computers are not behaving well. Usually when I can't get their computers to do what my customers want, I yell high and loud so my team-mates from around the world can help me to help them!"

### What hobbies do you enjoy outside work?

Well, primary catching up movies and TV series that I like to watch (Netflix helps a lot with that), playing PC or console video games, traveling to places or countries I don't know, going to the gym to stay healthy, enjoying a good meal and drinks in a good restaurant or bar, listening to rock music. I like to enjoy the little things~

### Which would you prefer to fight: A horse sized duck or 100 duck sized horses?

From a video game perspective, definitely the 100 duck sized horses. The huge duck would fly a lot and make the fight a lot harder (flying enemies in video games are annoying as hell). Besides if you could tame some of the little horses you could run a small show and reap profits.

### Coffee or Tea?

No amount of tea can replace a properly brewed cup of coffee. If it's Colombian, much better.
PC or Console?

Oh the eternal debate. I play games of both sides from time to time, but console games are sometimes more comfortable to play.

### If Java wasn't around, what platform would you work with?

Python! Really like the way the language is, its libraries and the ecosystem built around it. The 2.X/3.X fragmentation is a bit of nonsense but manageable. If Python wasn't around then I'd use Go (not much market but the platform is fun)

### What is your favorite movie?

That is a hard one. I have a favorite movie per year. 2017 was Logan, 2016 was Arrival, 2015 was The Martian, 2014 was Interstellar, etc. No favorite movie this year still. (You might notice a pattern of science fiction there, too)

### Is Rush one of the greatest rock bands to ever to grace this world?

Yes, yes they are. [Exhibit A](https://www.youtube.com/watch?v=auLBLk4ibAk)

