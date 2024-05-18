---
id: rust
aliases:
  - 4
tags: []
Modified: 2023 Nov 09
title: Notes on Rust
author:
Last Modified: 2023 Nov 09
---

_Trying to go through each section of the Rust book and learn the lessons in each one._

## 4

> A foundational goal of Rust is to ensure that your programs never have undefined behavior.

The consequences of undefined programs are unknown (hence, undefined).

#### Ownership as Rusts way of safely interacting with memory

* Think of each function as defining its own separate stack.
* Each variable binding is a key value pair in that stack table (frame).
* The _heap_ exists outside of any stack table.
* Pointers to the heap can be a row in the stack.
* When a stack frame is 'dropped' (when a function is exited).
    * All the bindings are de-allocated and any references to heap.

Where _box_ is an element on the heap

> Box deallocation principle (fully correct): If a variable owns a box, when Rust deallocates the variable's frame, then
Rust deallocates the box's heap memory.


A scope is a range within which an item is valid. An item remains valid until it goes out of scope.

### 4.3

## 6

> Enums allow you to define a type by enumerating its possible variants.

You can use any kind of data type as a variant. I like this idea of an enum as a placeholder for variants.

## 7

The features that allow code organization in Rust is known as the _module system_.

* Paths: A naming of an item like a struct, function or module.
* Module: Control scopes, privacy and organisation of paths
* Crate: Tree of modules that produce libraries or executables.
    * Binary: single entrypoint, main function.
    * Library: no main function
* Packages: A feature that lets you build, test and share crates. Created with _cargo_ command.

### Functions vs Closures

* Both used to defined blocks of code to be called and executed.
* Functions do not capture variables from their surrounding scope.
* Closures can capture variables from their surrounding scope.
> closures don’t usually require you to annotate the types of the parameters or the return value like fn functions do.
Type annotations are required on functions because the types are part of an explicit interface exposed to your users.
Defining this interface rigidly is important for ensuring that everyone agrees on what types of values a function uses
and returns. Closures, on the other hand, aren’t used in an exposed interface like this: they’re stored in variables and
used without naming them and exposing them to users of our library.

* Closures have three capture types:
    * Fn: Borrows variables immutably from the surrounding scope.
    * FnMut: Borrows variables mutably from the surrounding scope.
    * FnOnce: Consumes variables, taking ownership of them.

## 10

* Generics are about duplication of concepts. Code duplication, with functions is intuitive.
* Generics are used to create definitions for items used in functions.
* The core algorithms are not affect only the data types.
`fn largest<T>(list: &[T]) -> &T {`
Declaring the notion of a general type T and then using it.
* It's capturing this notion that we're defining a concept over multiple data types.

In the following whatever `Some` is set to tells the compiler the type `T`

```
enum Option<T> {
    Some(T),
    None,
}

```
### Do you want to own a variable?

Lifetimes help to determine how long a variable remains in scope. Rust compares lifetimes by 'size' which is determined
by the scope.
