class OperationsController < ApplicationController

  def index

  end
  def update_ticket_price
    TaskLoggerJob.new.perform
    redirect_to '/admin/bus'


  end

end
