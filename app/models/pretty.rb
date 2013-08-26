class Pretty < ActiveRecord::Base
  attr_accessible :tag
  include HTTParty

  def images
    get_data['data']
  end

  def get_data
    client_id = ENV["CLIENT_ID"]
    HTTParty.get("https://api.instagram.com/v1/tags/#{tag}/media/recent?client_id=#{client_id}")
  end
end

