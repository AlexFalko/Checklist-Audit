class ChecklistsController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize Checklist
    @pagy, @checklists = pagy(policy_scope(Checklist), items: Checklist::COUNT_ITEM_PAGY)
  end

  def show
    @checklist = policy_scope(Checklist).find(params[:id])
    authorize @checklist
  end

  def new
    authorize Checklist
    @checklist = Checklist.new
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

  def edit
    @checklist = policy_scope(Checklist).find(params[:id])
    authorize Checklist

    return redirect_to checklists_path, flash: { notice: t('.error_edit') } if @checklist.audits.any?
  end

  def update
    authorize Checklist
    @checklist = Checklist.find(params[:id])

    if @checklist.update(checklist_params)
      redirect_to checklists_path, flash: { notice: t('.checklist_update') }
    else
      render 'edit', flash: { alert: t('.checklist_not_update') }
    end
  end

  def destroy
    authorize Checklist
    checklist = policy_scope(Checklist).find(params[:id])
    if checklist.destroy
      redirect_to checklists_path, flash: { notice: t('.checklist_deleted') }
    else
      render action: 'checklist#index', flash: { alert: t('.checklist_not_deleted') }
    end
  end

  def toggle_status
    checklist = Checklist.find(params[:id])
    if checklist.toggle!(:status)
      redirect_to root_path, flash: { notice: t('.status_changed') }
    else
      render root_path, flash: { alert: t('.status_not_changed') }
    end
  end

  private

  def checklist_params
    params.require(:checklist).permit(:title, :description, :user_id, :status,
                                      questions_attributes: %i[id title description])
  end
end
