require 'spec_helper'
require 'new_releases'
require 'pry'

describe NewReleases do

  before do
    @country_code = NewReleases.get_country_code("Australia")
  end

  it "Check Property @country_code for Australia" do
    expect(@country_code).to eq("AU")
  end

  it "Gets Bowie" do
    search_results = NewReleases.get_bowie
    expect(search_results).to eq("David Bowie")
  end

  it 'Gets Australian New Releases' do
    new_releases = NewReleases.get_new_releases(@country_code)
    puts new_releases
    expect(new_releases.length).to_not eq(0)
  end

end
