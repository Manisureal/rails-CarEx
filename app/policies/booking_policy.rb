class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    true
  end

  def index?
    true
  end

  def my_bookings?
    return true
  end
end
