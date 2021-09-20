require 'rails_helper'
RSpec.describe HardWorker, type: :worker do
  include Sidekiq::Worker

  def perform(name, count)

  end
end

HardWorker.perform_async('mia',5)
HardWorker.perform_in(5.minutes, 'bob', 5)
HardWorker.perform_at(5.minutes.from_now, 'bob', 5)
