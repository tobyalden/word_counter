require("sinatra")
require("sinatra/reloader")
require("./lib/word_counter")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get("/word_counter") do
  @search_word = params.fetch("search_word")
  @phrase_to_search = params.fetch("phrase_to_search")
  @number_of_instances = params.fetch("search_word").word_counter(params.fetch("phrase_to_search")).to_s()
  erb(:word_counter)
end
