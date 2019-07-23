class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist =  artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.painting_price
    Painting.all.map { |painting| painting.price }
  end

  def self.total_price
    painting_price.inject { |sum, painting| sum + painting }
  end

end
