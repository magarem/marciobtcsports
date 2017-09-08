class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.kind == 'salesman'
        can :access, :rails_admin
        can :dashboard
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end
