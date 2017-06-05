# README

## WIP

API for doing an "Envelope" style budget.

## Getting Started

1. Run `bundle`
2. Run `rake db:migrate`
3. Run `rake db:seed`
4. Run `rails s`

## How to use

* There is a test user in seeds to get started
* Get the token for the user by using the `/token` method
* Pass the token in the header using the `X-CSRF-Token` key