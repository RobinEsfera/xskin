module ApplicationHelper
  def active_class?(*paths)
    active = false
    paths.each { |path| active ||= current_page?(path) }
    active ? 'xskin-active' : nil
  end
end
