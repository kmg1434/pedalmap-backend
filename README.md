# PedalMap
### by Kevin Grady


[Try it here!](https://kmg1434.github.io/pedalmap-frontend)

[Front end Repo](https://github.com/kmg1434/pedalmap-frontend)

[Back end Repo](https://github.com/kmg1434/pedalmap-backend)

## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

# Introduction

This is the back end API for the Pedal Map program. This program is a browser
based utility for musicians who own, or plan to own, a collection of effects
pedals. Musicians tend to switch up their equiptment often, and suffer from
what is known as GAS (gear aquisition syndrome). A collection of pedals will be
sorted in a particular order and orientation so that they neatly (or not so
neatly) fit on a board of some shape or size, most commonly a rectangle wider
than it is long. This application will help musicians determine just how big
their pedal board has to be before purchasing pedals.

## Technologies Used

- Ruby on Rails
- Git, Github.com, and GitHub Pages

## Development Process

1. Develop ERD
2. Create Users table and relations
3. Create Boards table and relations
4. Create pedals table and relations
5. Add ownership relations for users and boards
6. Create serializers to determine data sent to front end
7. Develop ReadMe.md file
