require "rails_helper"

describe "An event" do
  it "is free if the price is $0" do
    event = Event.new(price: 0.0)
  
    expect(event.free?).to eq(true)
  end

  it "is NOT free if the price is not $0" do
    event = Event.new(price: 10.0)
  
    expect(event.free?).to eq(false)
  end

  it "is IS free if the price is blank" do
    event = Event.new(price: nil)
  
    expect(event.free?).to eq(true)
  end


end