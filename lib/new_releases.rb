require 'pry'
require 'iso_country_codes'
require 'rspotify'
class NewReleases

  def self.get_country_code(country)
    country_code = IsoCountryCodes.search_by_name(country).first.alpha2
    # TODO: return null or throw an error here?
    return country_code
  end

  # it works!
  def self.get_bowie
    client_id = "REDACTED"
    client_secret = "REDACTED"
    RSpotify.authenticate(client_id,client_secret)
  end

  def self.get_new_releases(country_code)
    artists = RSpotify::Artist.search('David Bowie')
    puts artists.first.name

    # curl -X GET "https://api.spotify.com/v1/browse/new-releases?country=AU" -H "Authorization: Bearer {your access token}"
    return new_releases
  end
end
