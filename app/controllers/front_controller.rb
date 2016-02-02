class FrontController < ApplicationController
  layout "front"

  before_action :authenticate_user!
end
