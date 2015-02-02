class Apartment < ActiveRecord::Base
  validates :url, uniqueness: true
  validates :url, :title, :description, presence: true

  def self.pushbullet
    @pushbullet ||= Washbullet::Client.new(ENV["WASHBULLET_KEY"])
  end

  def self.refresh
    olx = AdCrawler::OLX::Parser.new.parse!
    olx.reverse.each do |ad|
      apartment = Apartment.new(ad.to_param)
      apartment.notify if apartment.save
    end
  end

  def notify
    self.class.pushbullet.devices.body['devices'].map{ |device| device['iden'] }.each do |iden|
      self.class.pushbullet.push_link iden, title, url, description
    end
  end
end
