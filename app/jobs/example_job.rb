class ExampleJob < ActiveJob::Base
  include SuckerPunch::Job
  queue_as :default

  def perform(*args)
    # Do something later
  end
end
