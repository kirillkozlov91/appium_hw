class Movies

  def featured_screen
    @featured_screen ||= FeaturedScreen.new
  end

  def movie_info_screen
    @movie_info_screen ||= MovieInfoScreen.new
  end

  def common_actions
  @common_actions ||= CommonActions.new
  end

end