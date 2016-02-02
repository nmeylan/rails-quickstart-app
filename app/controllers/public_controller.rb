class PublicController < ApplicationController
  layout "public"

  before_action :require_no_authentication

  def require_no_authentication
    redirect_to(dashboard_path) if user_signed_in?
  end
end