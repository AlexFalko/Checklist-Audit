class AuditPolicy < ApplicationPolicy

  def index?
    @user.present?
  end

  def create?
    @user.present?
  end

  def update?
    user.present?
  end

  def destroy?
    @user.present?
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
   
end