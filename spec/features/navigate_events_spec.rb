require "rails_helper"

describe "Navigating Events" do 
  it "it allows navigation from the detail page to the listing page" do
    event = Event.create(event_attributes)
    visit event_url(event)

    click_link "All Events"

    expect(current_path).to eq(root_path)
  end

  it "it allows navigation from the detail page to the listing page" do
    event = Event.create(event_attributes)
    visit events_url

    click_link event.name

    expect(current_path).to eq(event_path(event))
  end
end