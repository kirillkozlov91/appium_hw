class FeaturedScreen < CommonActions

  def featured_list
    find_element(:class_name, "UIATableView").find_elements(:class_name, "UIATableCell")
  end

end