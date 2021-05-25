module ApplicationHelper
  def format_date(data)
    data.try(:strftime, '%d/%m/%Y - %H:%M')
  end
end
