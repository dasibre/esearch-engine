module ApplicationHelper
  #helper method provided by SearchEngine gem
  #@returns 'searh from view'
  def search_form
    SearchEngine.search_form
  end
end
