module ApplicationHelper
  def current_namespace?(namespace)
    request.fullpath.start_with?("/#{namespace}")
  end
end
