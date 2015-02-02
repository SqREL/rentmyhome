class AdCrawler::OLX::Parser
  def initialize(params={})
    @params = params
  end

  def parse!
    response = HTTParty.get self.class.parent::BASE_URL, query: params
    if response.code == 200
      json = JSON.parse(response.body)['ads']
      AdCrawler::OLX::Results.new(json).decorate_results
    else
      raise "RESPONSE CODE IS #{response.code}"
    end
  end

  def params
    @params.present? ? @params : default_params
  end

  private
    def default_params
      {
        json: 1,
        search: {
          view: 'list',
          private_business: 'private',
          city_id: 176,
          'filter_float_price:from' => 1500,
          'filter_float_price:to' => 2700,
          category_id: 15
        },
        currency: 'UAH',
        version: '1.6',
        app_android: '1'
      }
    end
end
