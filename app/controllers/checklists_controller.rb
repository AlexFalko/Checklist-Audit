class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize Checklist
    @pagy, @checklists = pagy(policy_scope(Checklist), items: 10)
  end

  def new
    @checklist = Checklist.new
  end

  def create
    @checklist = Checklist.new(checklist_params)
    @checklist.user_id = current_user.id
    if @checklist.save
      redirect_to checklists_path, flash: { notice: "Checklist create!" }
    else
      render 'new'
    end
  end

  def destroy
    @checklist = Checklist.find(params[:id])
    @checklist.destroy

    redirect_to checklists_path, flash: { notice: "Checklist deleted!" }
  end


  private

    def checklist_params
      params.require(:checklist).permit(:title, :description, :user_id)
    end

end
