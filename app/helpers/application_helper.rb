module ApplicationHelper

  def title
    base_title = "redacted inc."

    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def dashboard
    if @current_user.nil?
      link_to "login", login_path
    else
      link_to @current_user.first_name, user_path(@current_user.id)
    end
  end

  def flash_helper
    f_names = [:notice, :warning, :message]
    fl = ''

    for name in f_names
      if flash[name]
        fl = fl + "<div class=\"notice\">#{flash[name]}</div>"
      end
      flash[name] = nil;
    end
  return fl
  end
end
