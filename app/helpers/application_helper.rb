module ApplicationHelper
  def full_title(page)
    base="Mai"
    if page.empty?
      base
    else
      base+" | "+page
    end
  end
end
