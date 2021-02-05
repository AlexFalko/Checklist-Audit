class AuditsController < ApplicationController
  before_action :authenticate_user!
  def index
    authorize Audit
    @pp=Audit.all
    @pagy, @audits = pagy(policy_scope(Audit), items: Checklist::COUNT_ITEM_PAGY)
   
  end


  def new
    @audit = Audit.new
  end


  def create
    authorize Audit
    @audit = current_user.audit.new(audit_params)
    if @audit.save
      redirect_to audits_path, flash: { notice: "Audit create!" }
    else
      render 'new'
    end

  end

  def destroy
    authorize Audit
    @audit = Audit.find(params[:id])
    if @audit.destroy
      redirect_to audits_path, flash: { notice: "Audit deleted!" }
    else
      redirect_to audits_path, flash: { notice: "Audit not deleted!" }
    end 
  end   


private

  def audit_params
    params.require(:audit).permit(:user_id, :checklist_id)
  end


end
