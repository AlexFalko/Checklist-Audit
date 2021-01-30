class ChecklistsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @pagy, @checklists = pagy(Checklist.all, items: 10)
  end
end
