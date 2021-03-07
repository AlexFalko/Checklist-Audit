module ChecklistsHelper
  def pagy_count_checklist?
    Checklist.count >= Checklist::COUNT_ITEM_PAGY
  end
end
