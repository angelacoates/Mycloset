class PagesController < ApplicationController
  layout false
  def landing
    if current_user
      redirect_to clothings_path
    else
      redirect_to new_user_session_path
    end
  end
end
