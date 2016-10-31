class IndexController < ApplicationController
  def main

  end

  def beermain
    @beerposts = Beerpost.all
    @beercolours = Beercolour.all
    @breweries = Brewery.all
  end
end
