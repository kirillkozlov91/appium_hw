class CommonActions

  def featured_bottom_bar
  find_element(:xpath, "//UIAButton[@name='Featured']")
  end

  def bookmarks_bottom_bar
    find_element(:xpath, "//UIAButton[@name='Bookmarks']")
  end

  def navigation_bar_header
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]").attribute("name")
  end

  def back_button
    find_element(:xpath, "//UIAButton[@name='Back']")
  end

end