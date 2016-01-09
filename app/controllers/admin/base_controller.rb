class Admin::BaseController < ApplicationController

  before_action :require_admin

  layout "dashboard"

  def dashboard
  end

end
