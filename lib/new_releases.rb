require 'pry'
require 'iso_country_codes'
require 'rspotify'
require 'dotenv'

Dotenv.load

class NewReleases

  def self.get_country_code(country)
    country_code = IsoCountryCodes.search_by_name(country).first.alpha2
    # TODO: return null or throw an error here?
    return country_code
  end

  def self.get_bowie
    client_id = ENV['client_id']
    client_secret = ENV['client_secret']
    RSpotify.authenticate(client_id,client_secret)
    bowie = RSpotify::Artist.search('David Bowie')[0].name
    #binding.pry
    return bowie
  end

  def self.get_new_releases(country_code)
    client_id = ENV['client_id']
    client_secret = ENV['client_secret']
    RSpotify.authenticate(client_id,client_secret)
    new_releases = RSpotify::Album.new_releases(country: @countryCode)
    binding.pry
    return new_releases
  end
end
