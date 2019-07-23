require_relative '../config/environment.rb'


a1 = Artist.new("Bob", 19)
a2 = Artist.new("Blitz", 4)
a3 = Artist.new("Chris", 7)
a4 = Artist.new("Elisa", 10)


g1 = Gallery.new("proes nly", "manhattan")
g2 = Gallery.new("flatiron", "cliffside park")
g3 = Gallery.new("fullstack", "flushing")
g4 = Gallery.new("shit on chris .com", "elisa's couch")


p1 = Painting.new("do u evn lyft?", 30000, a3, g3)
p2 = Painting.new("mona-liza", 19.99, a1, g2 )
p3 = Painting.new("pigs inna blenket", 350, a2, g1)
p4 = Painting.new("painting4", 48, a1, g4)
p5 = Painting.new("painting5", 93, a2, g3)
p6 = Painting.new("painting6", 208, a4, g1)

painting_arr = [p1, p2, p3, p4, p5, p6]



binding.pry

puts "Bob Ross rules."
