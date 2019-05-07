# Requirements

Create a Ruby app that takes in a country
string (ie United States or China) and
returns the Spotify new releases for that country.
Write RSpec tests for each method you use.

## Use the following gems

* Country Codes: https://rubygems.org/gems/iso_country_codes
* Spotify: https://rubygems.org/gems/rspotify Notes: https://github.com/guilhermesad/rspotify
* Secure API Keys: https://rubygems.org/gems/dotenv Notes: https://github.com/bkeepers/dotenv#sinatra-or-plain-ol-ruby

# Notes

## Up Next

* poke at rspotify methods using pry

## Current Focus

n/a

## Work Performed

* add .env to gitignore (was done automatically...nice!)
* work on method get_new_releases
* work on intergrating dotenv / hiding spotify keys
* integrate pry to method get_bowie
* write test for method get_bowie
* create test method to verify that authentication is working, then remove api token + secret
* read up on using rspotify / Spotify API
* https://developer.spotify.com/documentation/web-api/reference/browse/get-list-new-releases/
* sign up for Spotify Developer access token
* tinker with ISO Country Code
* https://www.rubydoc.info/gems/iso_country_codes/0.7.8
* scaffolding for methods
* added gems to Gemfile
* spec created

## PRY Notes

command   notes
-------   -----
exit!     quits pry
q         to break out of displaying var/screen of data
quit      to continue if in loop, break out if not in loop
whatever=_ set the last response equal to the variable "whatever"
