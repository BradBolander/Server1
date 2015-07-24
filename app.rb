require 'bundler'
Bundler.require()

class Movie
  def initialize (name, release_year, description)
    @name = name
    @release_year = release_year
    @description = description
  end

  def get_name
    @name
  end

  def get_release_year
    @release_year
  end

  def get_description
    @description
  end
end

movie1 = Movie.new('300','2007','SPARTANS WRECKING PEOPLE YEAHHH')
movie2 = Movie.new('interstellar', '2014', 'SPACE')
movie3 = Movie.new('kung-fu-hustle', '2004', 'Who doesnt love kung fu?')

get '/' do
  {:message => 'Try /api/300, /api/interstellar, and /api/kung-fu-hustle !' }.to_json
end

get '/api/300' do
  {:name => movie1.get_name, :release_year => movie1.get_release_year, :description => movie1.get_description}.to_json
end

get '/api/interstellar' do
  {:name => movie2.get_name, :release_year => movie2.get_release_year, :description => movie2.get_description}.to_json
end

get '/api/kung-fu-hustle' do
  {:name => movie3.get_name, :release_year => movie3.get_release_year, :description => movie3.get_description}.to_json
end
