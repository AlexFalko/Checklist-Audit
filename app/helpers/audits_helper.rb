module AuditsHelper
  def pagy_count_audit?
    Audit.count >= Checklist::COUNT_ITEM_PAGY
  end
end