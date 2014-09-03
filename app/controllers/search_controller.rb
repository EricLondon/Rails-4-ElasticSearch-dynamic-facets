class SearchController < ApplicationController

  def index
    @search = Person.search( *Person.search_params(params) )
  end

end
