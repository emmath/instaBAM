class Pretty < ActiveRecord::Base
  attr_accessible :tag
  include HTTParty
  base_uri 'api.instagram.com'

  def self.get_specific
    get_data['data']
  end

  def self.get_data
    client_id = ENV["CLIENT_ID"]
    HTTParty.get("https://api.instagram.com/v1/tags/#{:tag}/media/recent?client_id=#{client_id}")
  end
end

