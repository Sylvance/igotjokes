RSpec.describe Igotjokes do
  let(:jokes) { [{"description"=>"Joke of the day ", "language"=>"en", "background"=>"", "category"=>"jod", "date"=>"2020-09-18", "joke"=>{"title"=>"Education Got You Down?", "lang"=>"en", "length"=>"60", "clean"=>"1", "racial"=>"0", "date"=>"2020-09-18", "id"=>"TkQfxQy5iZTYI7IEszyJUgeF", "text"=>"Why was the math book sad?\r\nBecause it had so many problems."}}] }

  it "has a version number" do
    expect(Igotjokes::VERSION).not_to be nil
  end

  it "returns an array of jokes" do
    allow(Igotjokes::Client).to receive(:get_jokes).and_return(jokes)

    expect(Igotjokes::Jokes.get).to eq(jokes)
  end
end
