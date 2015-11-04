class MovieInfoScreen < CommonActions

  def movie_title
    find_element(:name, "title_label").text
  end

  def movie_year
    find_element(:name, "year_label").text
  end

  def movie_rating
    find_element(:name, "rating_label").text.gsub(/★/, "")
  end

end