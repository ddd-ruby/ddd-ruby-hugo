---
date: 2016-03-08T21:07:13+01:00
title: Ruby libraries supporting DDD
type: index
weight: 0
---


## Rdm: the missing dependencies manager for Ruby apps

- <a href="https://ddd-ruby.github.io/rdm/" target="_blank">Rdm</a>

With RDM you can split up one big Ruby application into multiple lightweight packages with explicit dependencies. You can do it before going the `microservices` road, because this would be much smoother transition. Going from explicit dependencies graph to proper SOA / microservices is more straightforward. In DDD it helps to defined clearer [Bounded Contexts](http://martinfowler.com/bliki/BoundedContext.html), where each package can only access explicit dependencies. Contrast this with a monolithic Rails application with one global Ruby memory space, and you might understand the benefit of having stricter, more explicit way to manage dependencies.


## SmartIoC: a declarative dependency Injection library

- <a href="https://ddd-ruby.github.io/smart_ioc/" target="_blank">SmartIoC</a>

SmartIoC is a smart and really simple IoC container for Ruby applications.

It allows you to create your dependencies on demand, supports lazy-loading of Ruby files, also allows different contexts for each dependency, so you get test/lightweight implementations in development / tests enviroments. It works great in combination with `Rdm`.



## Hcast - Hash attributes caster in declarative way

- <a href="https://ddd-ruby.github.io/hcast/" target="_blank">Hcast</a>

In the DDD context it helps to convert the user input to a properly casted Ruby object / hash.
