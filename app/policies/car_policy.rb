class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    return true
  end

  def create?
    return true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end
  def my_cars?
    return true
  end

  private

  def user_is_owner?
    record.user == user
  end


end
