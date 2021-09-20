require 'rails_helper'

RSpec.describe Bus, type: :model do
  let(:bus) { create :bus }

  it "creates a bus" do
    expect(bus).to be_valid
  end

  describe "#available_seats" do
    subject { bus.available_seats }
    let(:all_tickets) { (1..bus.number_of_seats).to_a.map(&:to_s) }

    context 'all seats that exist with not av included' do
      it 'returns all seats' do
        expect(subject).to eq(all_tickets)
      end
    end

    context 'available seats' do
      let!(:tickets) do
        [
          create(:ticket, bus_id: bus.id, seat_id_seq: 1),
          create(:ticket, bus_id: bus.id, seat_id_seq: 2),
          create(:ticket, bus_id: bus.id, seat_id_seq: 3),
          create(:ticket, bus_id: bus.id, seat_id_seq: 4)
        ]
      end

      it 'returns available seats' do
        expect(subject).to eq(%w[5])
      end
    end

    context 'not available seats' do
      let!(:tickets) do
        [
          create(:ticket, bus_id: bus.id, seat_id_seq: 1),
          create(:ticket, bus_id: bus.id, seat_id_seq: 2),
          create(:ticket, bus_id: bus.id, seat_id_seq: 3),
          create(:ticket, bus_id: bus.id, seat_id_seq: 4),
          create(:ticket, bus_id: bus.id, seat_id_seq: 5)
        ]
      end

      it 'returns not available seats' do
        expect(subject).to eq([])
      end
    end
  end

  describe "#rest seats" do
    subject { bus.rest_seats }
    context 'all seats number' do

      it 'returns all seats number' do
        expect(subject).to eq(5)
      end
    end
    context 'available seats number' do
      let!(:tickets) do
        [
          create(:ticket, bus_id: bus.id, seat_id_seq: 1),
          create(:ticket, bus_id: bus.id, seat_id_seq: 2),
          create(:ticket, bus_id: bus.id, seat_id_seq: 3),
          create(:ticket, bus_id: bus.id, seat_id_seq: 4)
        ]
      end

      it 'returns available seats number' do
        expect(subject).to eq(1)
      end
    end
    context 'seats number of seats that are not available' do
      let!(:tickets) do
        [
          create(:ticket, bus_id: bus.id, seat_id_seq: 1),
          create(:ticket, bus_id: bus.id, seat_id_seq: 2),
          create(:ticket, bus_id: bus.id, seat_id_seq: 3),
          create(:ticket, bus_id: bus.id, seat_id_seq: 4),
          create(:ticket, bus_id: bus.id, seat_id_seq: 5)
        ]
      end
      it 'returns seats that are not available' do
        expect(subject).to eq(0)
      end
    end
  end
end



