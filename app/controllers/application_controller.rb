class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit
  before_action :authenticate_user!
end
