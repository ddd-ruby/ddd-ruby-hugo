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



## HashCast - Hash attributes caster in declarative way

- <a href="https://ddd-ruby.github.io/hashcast/" target="_blank">HashCast</a>

In the DDD context it helps to convert user input to a properly casted Ruby object / hash. It is a lightweight dependency-free Ruby library, with a nice DSL for for specifying the structure of expected input with Ruby types.

## PureValidator - Ruby domain object validation library

- <a href="https://ddd-ruby.github.io/pure_validator/" target="_blank">PureValidator</a>

PureValidator is a simple, mostly dependency-free (except `i18n`) library to validate your domain Ruby objects. It is an excellent companion to <a href="https://ddd-ruby.github.io/hashcast/" target="_blank">HashCast</a> to validate your Ruby objects against specific domain rules. What makes PureValidator special is the separation of validation rules from the object to validate. After countless fights against __one-size-fits-all__ `ActiveModel::Validations`-style validations that mix domain/value object with its valudations, we came to prefer this simpler and more flexible approach.

This approach is more popular in functional programming and leads to maintainable, easily unit-testable code. You are free to use multiple different validators for the same object in different situations. For example your validation rules during creation of an object are different from validations when user is changing a single boolean flag on it.


## Contracts - Contracts for Ruby

- <a href="https://ddd-ruby.github.io/contracts.ruby/" target="_blank">Contracts</a>

Contracts let you clearly – even beautifully – express how your code behaves, and free you from writing tons of boilerplate, defensive code.

We have a forked version of `contracts` with nice diff output for KeywordArgs type (Hash).


## Active Serializer - a simple objects to hash serializer.

- <a href="https://ddd-ruby.github.io/active_serializer/" target="_blank">ActiveSerializer</a>

ActiveSerializer is a lightweight dependency-free objects serializer with a nice declarative DSL.

In our <a href="https://github.com/ddd-ruby/json_serialization_benchmark" target="_blank">Serializers performance benchmark</a> it places on a solid middle ground right after plain Ruby presenters while sporting a declarative DSL, providing you the same convenience as `ActiveModel Serializers` do.

Compared to `ActiveModel::Serializers`-dependencies (activemodel / actionpack), that move with the corresponding Rails version, you get non of the potential headaches of conflicting transient dependencies, that are the horror and bane of many biggish Rails applications.


## ApiView - Friggin' fast Serializer gem

- <a href="https://ddd-ruby.github.io/api_view/" target="_blank">ApiView</a>
Another lightweight dependency-free objects serializer. Its `DSL` is less involved, because its main focus is performance.

`ApiView` is currently the fastest known Ruby-based object serializer. If you are generating huge JSON payloads in your Ruby application, it will bring you 5-10X fold performance improvements, as demonstrated in our <a href="https://github.com/ddd-ruby/json_serialization_benchmark" target="_blank">Serializers performance benchmark</a>.


## Values - Values is a tiny library for creating value objects in ruby.

- <a href="https://github.com/tcrayford/Values" target="_blank">Values</a>

1. Constructors require expected arguments
1. Instances are immutable


## Overview on Travis.CI

- <a href="https://travis-ci.org/ddd-ruby" target="_blank">DDD-Ruby libs on Travis</a>
