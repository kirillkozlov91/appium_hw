Given(/^I click on Featured button in bottom navigation bar$/) do
  common_actions.featured_bottom_bar.click
end

And(/^I check that I am on "([^"]*)" screen$/) do |header_name|
  expect(common_actions.navigation_bar_header).to be == header_name
end

Then(/^I check for total number of movies in the list and print them$/) do
  puts "There are #{featured_screen.featured_list.size} movies in the Featured list"
end

Then(/^I open first (\d+) movies and getting movie info and rating for them$/) do |movies_number|
  featured_screen.featured_list.first(movies_number.to_i).each do |movie|
    movie.click
    puts "Movie title is: #{movie_info_screen.movie_title}"
    puts "Movie year is: #{movie_info_screen.movie_year}"
    puts "Movie rating is: #{movie_info_screen.movie_rating}"
    puts "\n"
    common_actions.back_button.click
  end
end

Then(/^I open first (\d+) movies and getting rating for them and printing the highest one/) do |movies_number|
  ratings_array = []
  featured_screen.featured_list.first(movies_number.to_i).each do |movie|
    movie.click
    ratings_array << movie_info_screen.movie_rating.to_f
    common_actions.back_button.click
  end
  puts "Highest rating for first #{movies_number} movies is: #{ratings_array.max}"
end