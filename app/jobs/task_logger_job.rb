class TaskLoggerJob < ApplicationJob
  sidekiq_options queue: :default, retry: 3
  queue_as :default


  before_perform :print_before_perform_message
  after_perform :print_after_perform_message

  def perform
    Tickets::UpdateTicketsPriceService.new.call
  end

  def print_before_perform_message
    puts "Printing from inside before_perform callback."
  end

  def print_after_perform_message
    puts "Printing from inside after_perform callback"
  end
end
