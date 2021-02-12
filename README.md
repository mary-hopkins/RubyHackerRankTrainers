# HankerRank Trainers

A repository to keep all my trainers from HackerRank. Tests are created with TestUnit.

## Installation Instructions

Clone Repository, CD into the desired folder and run the test file.

## Completed Categories

Warm Up

## Hit-By-A-Bus

This repository is laid out to hold the coding exercises from HackerRank. Each category(Warm Up, Implementations) holds a ruby file containing the methods and a second file for the tests.

### Method File: 

Methods must be exposed by a class with a class wrapper Ex: class Implementation. They must also have self. prefixed to their name. Ex: def self.myMethod(a, b)

### Test File: 

The test file includes two require statements. The first is require "test/unit" so that we can use the Test class. The second is require_relative './implementation', which is a relative path to the file containing the methods to test. The Tests themselves are then wrapped in a class with a name of AnyWordTest. This class inherits from Test, Unit and TestCase. Ex: class ImplementationTest < Test::Unit::TestCase

### Adding Tests: 

To add a test in TestUnit, create a method with test_ prefixed to the name of the method we intend to test. Ex: def test_myMethod. The body of the test is made up of an assertion(assert_equal), result(4), method to call(Implementation.myMethod(1, 3)), and a message to display("myMethod(1, 3) returns 4). Ex: assert_equal 4, Implementation.myMethod(1, 3), "myMethod(1, 3) returns 4". Each test can have many assertions. 

### Running Tests: 

To run the test for a file of methods, navigate to the correct director and use the CL to run the test file. Ex: algorithms/implementations$ ruby implementationTests.rb