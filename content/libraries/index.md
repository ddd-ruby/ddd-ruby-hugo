---
date: 2016-03-08T21:07:13+01:00
title: Ruby libraries supporting DDD
weight: 0
---


## Rdm: the missing dependencies manager for Ruby apps

- <a href="https://ddd-ruby.github.io/rdm/" target="_blank">Rdm</a>

With RDM you can split up one big Ruby application into multiple lightweight packages with explicit dependencies. You can do it before going the `microservices` road, because this would be a much smoother transition. Going from explicit dependencies graph to proper SOA / microservices is also more straightforward. In DDD it helps to define clearer [Bounded Contexts](http://martinfowler.com/bliki/BoundedContext.html), where each package can only access explicit dependencies. Contrast this with a monolithic Rails application with one global Ruby memory space, and you might understand the benefit of having stricter, more explicit way of managing dependencies.


## SmartIoC: a declarative dependency Injection library

- <a href="https://ddd-ruby.github.io/smart_ioc/" target="_blank">SmartIoC</a>

SmartIoC is a smart and really simple IoC container for Ruby applications.

It allows you to create your dependencies on demand, supports lazy-loading of Ruby files, also allows different contexts for each dependency, so you get test/lightweight implementations in development / tests enviroments. It works great in combination with `Rdm`.



## Hcast - Hash attributes caster in declarative way

- <a href="https://ddd-ruby.github.io/hcast/" target="_blank">Hcast</a>

In the DDD context it helps to convert user input to a properly casted Ruby object / hash. It is a lightweight dependency-free Ruby library, with a nice DSL for for specifying the structure of expected input with Ruby types.


## Contracts - Contracts for Ruby

- <a href="https://ddd-ruby.github.io/contracts.ruby/" target="_blank">Contracts</a>

Contracts let you clearly – even beautifully – express how your code behaves, and free you from writing tons of boilerplate, defensive code.

We have a forked version of `contracts` with nice diff output for KeywordArgs type (Hash).



## Overview on Travis.CI

- <a href="https://travis-ci.org/ddd-ruby" target="_blank">DDD-Ruby libs on Travis</a>
