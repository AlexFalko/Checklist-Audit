class AuditsController < ApplicationController
  before_action :authenticate_user!
  def index
    authorize Audit
    @pagy, @audits = pagy(policy_scope(Audit), items: Checklist::COUNT_ITEM_PAGY)
   
  end

  def edit
    @audit = Audit.find(params[:id])
  end


  def new
    authorize Audit
    @checklist = Checklist.find(params[:audit][:checklist_id])
    @audit = @checklist.audits.build
  end


  def create
    authorize Audit
   
    # @checklist = Checklist.find(params[:checklist_id])
    @audit = current_user.audits.new(audit_params)
    # @audit = @checklist.audits.create(audit_params)
    # @audit = Audit.new(audit_params)
    if @audit.save
      redirect_to audits_path, flash: { notice: t('.audit_create') }
    else
      render 'new'
    end

  end

  def destroy
    authorize Audit
    @audit = Audit.find(params[:id])
    if @audit.destroy
      redirect_to audits_path, flash: { notice: t('.audit_deleted') }
    else
      render action: 'audit#index', flash: { alert: t('.audit_not_deleted') }
    end 
  end   


private

  def audit_params
    params.require(:audit).permit(:checklist_id)
  end


end
