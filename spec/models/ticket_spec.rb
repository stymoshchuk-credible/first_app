require 'rails_helper'

RSpec.describe Ticket, type: :model do

  let(:ticket) { create_list :ticket, 5 }

  it "creates a ticket" do
    expect(ticket).to be_valid
  end

end

