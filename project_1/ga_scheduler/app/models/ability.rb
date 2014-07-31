class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :producer
      can :manage, :all
    elsif user.role? :student
      can :read, Course
      can :read, Location

    elsif user.role? :instructor
        can :read, :all
    else
        can :create, User
    end
  end
end
