class BookingPolicy < ApplicationPolicy
  def create?
    if @user != record.game.user
      true
    else
      false
    end
  end

  def new?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
