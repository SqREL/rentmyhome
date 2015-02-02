class Apartment < ActiveRecord::Base
  validates :url, uniqueness: true
  validates :url, :title, :description, presence: true

  def self.refresh
    olx = AdCrawler::OLX::Parser.new.parse!
    olx.each do |ad|
      apartment = Apartment.new(ad.to_param)
      apartment.save
    end
  end
end
