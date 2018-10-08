def event_attributes(overrides = {})
  {
    name: "BugSmash",
    location: "Denver",
    price: 10.00,
    description: "A night of smashing the bugs",
    starts_at: 10.days.from_now
  }.merge(overrides)
end