# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Deal, author: user
    can :manage, Catagory, user: user
  end
end