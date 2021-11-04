class Movie < ActiveRecord::Base

 def self.create_with_title(title)
   titled_movie = Movie.create(title: title)
 end 
 def self.first_movie()
    Movie.find(1)
 end
 def self.last_movie()
    Movie.find(5)
end
def self.movie_count()
   movie= Movie.all
   movie.length
end
def self.find_movie_with_id(id)
    Movie.find(id)
end 
def self.find_movie_with_attributes(attr)
    Movie.find_by(attr)
end
def self.find_movies_after_2002()
    Movie.where(release_date:2002)
end
end