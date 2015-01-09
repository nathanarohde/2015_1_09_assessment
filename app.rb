require ('sinatra')
require ('sinatra/reloader')
require ('./lib/frequency')
also_reload('lib/**/*.rb')

get ('/layout') do
  erb(:layout)
end

get ('/') do
  erb(:form)
end

get ('/frequency') do
  # sentence entered on form.erb
  @sentence_to_search = params.fetch('sentence_to_search')
  # word used to search sentence entered on form.erb
  @search_term = params.fetch('search_term')
  # final output derived by using frequency.rb method
  @times_found = params.fetch('sentence_to_search').frequency(params.fetch('search_term'))
  erb(:frequency)
end
