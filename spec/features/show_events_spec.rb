require "rails_helper"

describe "Viewing the list of events" do 
  it "shows the event's details" do
    event = Event.create(event_attributes)
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text("$10.00")
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.starts_at)
  end

  it "shows the price if the price is not $0" do
    event = Event.create(event_attributes(price: 20.00))

    visit event_url(event)

    expect(page).to have_text("20.00")
  end

  it "shows 'FREE' if the price is $0" do
    event = Event.create(event_attributes(price: 0.00))

    visit event_url(event)

    expect(page).to have_text("FREE!")
  end
end