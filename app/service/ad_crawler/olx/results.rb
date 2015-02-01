class AdCrawler::OLX::Results
  def initialize(json)
    @json = json
  end

  def decorate_results
    @json.map do |result|
      AdCrawler::OLX::Result.new(result)
    end
  end
end