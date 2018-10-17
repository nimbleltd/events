class Event < ApplicationRecord
  def free?
    price.blank? || price.zero?
    # true
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end
end
