title=Kotlin Everywhere, even in your build script!
date=2019-08-27
type=post
tags=Alternative languages
status=published
category=Alternative languages
twitter=JMoralejas
img=jimmymorales.jpg
~~~~~~

## Title

Kotlin Everywhere, even in your build script!

## Presenter

**Jimmy Morales**

I’m a Software Engineer with a huge passion on software development and technologies. I have been working on mobile projects the last years, and for that reason I got myself certified as Google Associate Android Developer.

I’m a very outgoing person and this year I decided to contribute more to the community and really be part of it.

I love my family, obsessed with soccer and crazy about coding.


## Social Media

* https://www.linkedin.com/in/jimmymorales26/

## Description

Gradle is one of the most famous tools for build automation. It allows you to build any software, is extendible, runs on the JVM and has IDE support.

November of last year they officially released Gradle v5.0 with Kotlin support. This was a huge improvement over their first supported language, Groovy. Kotlin support added more value to Gradle, and also means that you can have Kotlin in your frontend, backend, cloud, mobile and even in your build script.
Objectives

Attendees will get a brief explanation about Gradle and learn how to use Kotlin in Gradle and its advantages over Groovy. They will also learn how to migrate an existing Groovy build script to Kotlin.
Detailed Abstract

Gradle is an open-source build automation tool that is designed to be flexible enough to build almost any type of software. Gradle uses a core model based on tasks. What this means is that Gradle configures a set of tasks and wires them together, based on their dependencies, to create a task graph. Once the task graph has been created, Gradle determines which tasks need to be run in which order and then proceeds to execute them.

Initially you could use Groovy to set up your build model, dependencies and tasks. Groovy is a language based on the JVM platform. Gradle uses Groovy as a declarative programming language, declarative means that you write “what” you want to build, “what” dependencies you need, etc. And Gradle does the “how”.

But Groovy has its disadvantages. Very poor IDE assistant, performance issues, errors at build runtime instead of compile time, bad build script debugging experience and refactoring is a pain.

What means Gradle supporting Kotlin as its build language? We get a statically typed and a type-safe DSL, an enhanced IDE editing experience, interoperability with existing Groovy scripts, readability as Groovy and consistency by using the same language across the project (source code and configuration). I will show these concepts in two simple live demos.