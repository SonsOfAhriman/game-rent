class GamePolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    if @user == record.user
      true
    else
      false
    end
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
