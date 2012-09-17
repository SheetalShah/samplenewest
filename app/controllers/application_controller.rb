class ApplicationController < ActionController::Base
  before_filter :initialize_user
  include Clearance::Authentication
  protect_from_forgery
  include SessionsHelper

  def initialize_user
	@user = User.new
  end
end
