class ChecklistsController < ApplicationController
  before_action :authenticate_user!
  def index
    @checklists = Checklist.all
  end
end
