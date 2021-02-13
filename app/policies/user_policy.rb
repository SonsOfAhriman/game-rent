class UserPolicy < ApplicationPolicy
  def show?
    if @user == record
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
