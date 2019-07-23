class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def self.experience
    Artist.all.map { |artist| artist.years_experience }
  end

  def self.total_experience
    experience.reduce { |sum, experience| sum + experience }
  end

  def self.all_paintings
    Artist.all.map { |artist| artist.painting }
  end

  def self.most_prolific
    Artist.all.sort_by { |artist| paintings_per_year(artist) }.last
    # Artist.all.reduce { |a, b| paintings_per_year(a) > paintings_per_year(b) ? a : b }
  end

  def paintings_per_year(artist)
    (artist.paintings.size.to_f/artist.years_experience.to_f)
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
