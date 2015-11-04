Feature: Movies app basic functionality testing

  @count_featured_movies
  Scenario: Count how many total movies are on Featured screen
    Given I click on Featured button in bottom navigation bar
    And I check that I am on "Featured" screen
    Then I check for total number of movies in the list and print them

  @info_first_five_movies
  Scenario: Open First 5 Movies and print Movie title / year and rating into console
    Given I click on Featured button in bottom navigation bar
    And I check that I am on "Featured" screen
    Then I open first 5 movies and getting movie info and rating for them

  @highest_rating_first_five_movies
  Scenario: Collect rating for first 5 movies and printout highest one into console
    Given I click on Featured button in bottom navigation bar
    And I check that I am on "Featured" screen
    Then I open first 5 movies and getting rating for them and printing the highest one