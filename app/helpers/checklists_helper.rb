module ChecklistsHelper
  def pagy_count_checklist?
    Audit.count >= Checklist::COUNT_ITEM_PAGY
  end
end
