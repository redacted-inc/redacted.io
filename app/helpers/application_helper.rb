module ApplicationHelper

  def title
    base_title = "redacted inc."

    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def user_name
    "guest"
  end
end
