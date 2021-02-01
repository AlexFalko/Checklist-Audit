class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize Checklist
    @pagy, @checklists = pagy(policy_scope(Checklist), items: 10)
  end

  def show
    @checklist = Checklist.find(params[:id])
    authorize Checklist
  end


  def new
    authorize Checklist
    @checklist = Checklist.new
  end

  def create
    authorize Checklist
    @checklist = current_user.checklists.new(checklist_params)
    if @checklist.save
      redirect_to checklists_path, flash: { notice: "Checklist create!" }
    else
      render 'new'
    end
  end

  def destroy
    authorize Checklist
    @checklist = Checklist.find(params[:id])
    if @checklist.destroy
      redirect_to checklists_path, flash: { notice: "Checklist deleted!" }
    else
      redirect_to checklists_path, flash: { notice: "Checklist not deleted!" }
    end 
  end


  private

    def checklist_params
      params.require(:checklist).permit(:title, :description, :user_id)
    end

end
