module ApplicationHelper
  def render_flash_messages(options = {})
    html = render("layouts/flash", options: options)
    flash.clear
    html
  end

  def flash_class(key)
    case key.to_sym
      when :notice
        "info"
      when :error, :alert
        "danger"
      else
        key
    end
  end
end
