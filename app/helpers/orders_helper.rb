module OrdersHelper
  def order_status_bg(status)
    case status
    when 'Pending'
      "bg-status_yellow"
    when 'Completed'
      "bg-status_green"
    when 'Cancelled'
      "bg-status_red"
    end
  end
end
