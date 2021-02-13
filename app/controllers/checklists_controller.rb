class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize Checklist
    @pagy, @checklists = pagy(policy_scope(Checklist), items: Checklist::COUNT_ITEM_PAGY)
   
  end

  def show
    authorize Checklist
    @checklist = Checklist.find(params[:id])
  end

  def new  
    authorize Checklist
    @checklist = Checklist.new
    @checklist.questions.build 
    @checklist.questions.build 
  end

  def create
    authorize Checklist
    @checklist = current_user.checklists.new(checklist_params)
    
    if @checklist.save
      redirect_to checklists_path, flash: { notice: t('.checklist_create') }
    else
      render 'new'
    end
  end

  def destroy
    authorize Checklist
    checklist = Checklist.find(params[:id])
    if checklist.destroy
      redirect_to checklists_path, flash: { notice: t('.checklist_deleted') }
    else
      render action: 'checklist#index', flash: { alert: t('.checklist_not_deleted') }
    end 
  end

  private

    def checklist_params
      params.require(:checklist).permit(:title, :description, :user_id, questions_attributes: [:id, :title, :description])
    end

end
