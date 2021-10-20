require_relative '../source'
require_relative '../movie'

describe Source do
  context 'Source tests' do
    it 'items array length increase by one' do
        movie_publish_date = '2021-10-19'
        movie_silent = true
        movie_source = 'Gift'

        new_source = Source.new(movie_source)
        new_movie = Movie.new(movie_publish_date, movie_silent)
        new_movie.source = new_source
        new_source.add_item(new_movie)

      expect(new_source.items.length).to eq(1)
    end

    it 'Creates a Movie class instance' do
        
        movie_source = 'Gift'
        new_source = Source.new(movie_source)

      expect(new_source).to be_an_instance_of(Source)
    end

    it 'Creates a Movie class instance' do
        
        movie_source = 'Gift'
        new_source = Source.new(movie_source)

        expect(new_source.nil?).to be(false)
    end

    it 'Raises an error if no arguments are passed in' do
        expect { new_source = Source.new }.to raise_error(ArgumentError)
    end
  end
end