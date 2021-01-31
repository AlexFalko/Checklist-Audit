class ChecklistsController < ApplicationController
  # before_action :set_checklist, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # def pundit_user
  #   current_user
  # end
  def index
    authorize Checklist

    @pagy, @checklists = pagy(policy_scope(Checklist), items: 10)
  end


 
end
