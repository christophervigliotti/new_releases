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

  it 'Gets Australian New Releases' do
    new_releases = NewReleases.get_new_releases(@country_code)
    expect(new_releases.length).to_not eq(0)
  end

end
