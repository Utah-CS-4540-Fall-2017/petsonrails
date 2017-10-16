class HomeController < ApplicationController
  def index
    @needs_registration = current_user.owner.blank? && current_user.sitter.blank?

    @is_owner = current_user.owner
    if @is_owner
      if current_user.owner.pets.blank?
        @pets = [current_user.owner.pets.build]
      end
    end
  end

  def about
  end

  def help
  end

end
