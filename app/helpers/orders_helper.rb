module OrdersHelper
  def order_status_bg(status)
    case status
    when 'Pending'
      "bg-status_yellow bg-opacity-50"
    when 'Completed'
      "bg-status_green bg-opacity-50"
    when 'Cancelled'
      "bg-status_red bg-opacity-50"
    else
      "bg-status_yellow"
    end
  end
end
