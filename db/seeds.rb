Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!(name: "Usher")
artist2 = Artist.create!(name: "Hardwell")


song1 = Song.create!(title: "Yeah!",
                    year_of_release: "2004", artist: artist1)
song2 = Song.create!(title: "OMG",
                    year_of_release: "2017", artist: artist1)
song3 = Song.create!(title: "Spaceman",
                    year_of_release: "2012", artist: artist2)
song4 = Song.create!(title: "Follow me",
                    year_of_release: "2002", artist: artist2)
