class ApartmentWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  sidekiq_options failures: true

  recurrence { hourly.minute_of_hour(0, 15, 30, 45) }

  def perform
    Apartment.refresh
  end
end