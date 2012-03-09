module BasicHelpers
  def page_title
    title = "Middleman: "
    if data.page.title
      title << data.page.title
    else
      title << "Hand-crafted frontend development"
    end
    title
  end

  def is_guide_page?
    request.path =~ /guides/
  end


  def is_mainpage?
    request.path =~ /index/
  end

  def active_if(regex)
    request.path =~ regex ? "active" : ''
  end

  def edit_guide_url
    file_name = request.path.split("guides/").last
    "https://github.com/middleman/middleman-guides/blob/master/source/guides/#{file_name}.markdown"
  end
end
