require_relative '../classes/movie'

describe Movie do
  context 'Movie tests' do
    it 'Returns true if movie is silent' do
      movie_publish_date = '2021-10-19'
      movie_silent = true

      new_movie = Movie.new(movie_publish_date, movie_silent)

      expect(new_movie.move_to_archive).to eq(true)
    end

    it 'Creates a Movie class instance' do
      movie_publish_date = '2021-10-19'
      movie_silent = true

      new_movie = Movie.new(movie_publish_date, movie_silent)

      expect(new_movie).to be_an_instance_of(Movie)
    end

    it 'New instance is not empty' do
      movie_publish_date = '2021-10-19'
      movie_silent = true

      new_movie = Movie.new(movie_publish_date, movie_silent)

      expect(new_movie.nil?).to be(false)
    end

    it 'Raises an error if no arguments are passed in' do
      expect { new_movie = Movie.new }.to raise_error(ArgumentError)
    end
  end
end
