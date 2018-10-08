class Event < ApplicationRecord
  def free?
    price.blank? || price.zero?
    # true
  end
end
