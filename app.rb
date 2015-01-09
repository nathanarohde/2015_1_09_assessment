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
  @sentence_to_search = params.fetch('sentence_to_search')
  @search_term = params.fetch('search_term')
  @times_found = params.feth ('sentence_to_search').frequency(params.fetch'search_term')
  erb(:frequency)
  end
