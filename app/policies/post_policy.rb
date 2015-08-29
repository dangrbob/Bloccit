class PostPolicy < ApplicationPolicy

  def index?
    true
  end  

  class Scope 
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise Pundit::NotAuthorizedError, "Must be logged in" unless user
      if user.admin? || user.moderator?
        scope.all
      else
        scope.where(:user => @user)
      end
    end
  end

  def update?
    user.admin? or scope.where(:user => @user)
  end

  
end

