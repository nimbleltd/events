require "rails_helper"

describe "Viewing the list of events" do 
  it "shows the event" do 
    event1 = Event.create(name: "BugSmash",
                          location: "Denver",
                          price: 10.00,
                          description: "A night of smashing the bugs",
                          starts_at: 10.days.from_now
                          )
    event2 = Event.create(name: "Hackathon",
                          location: "Austin",
                          price: 40.00,
                          description: "Hunker down for a Hackathon Hoedown",
                          starts_at: 21.days.from_now
                          )
    event3 = Event.create(name: "Kata Camp",
                          location: "Dallas",
                          price: 75.00,
                          description: "Grow your craft with katas",
                          starts_at: 30.days.from_now
                          )

    visit events_url

    expect(page).to have_text("3 Events")
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)

    expect(page).to have_text(event1.location)
    expect(page).to have_text(event1.description[0..10])
    expect(page).to have_text(event1.starts_at)
    expect(page).to have_text("$10.00")
  end
end