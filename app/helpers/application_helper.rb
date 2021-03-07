module ApplicationHelper
  include Pagy::Frontend

  def pagy_count?
    Audit.count >= Checklist::COUNT_ITEM_PAGY
  end
end
