Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!(name: "Usher")


song1 = Song.create!(title: "Yeah!",
                    year_of_release: "2004", artist: artist1)
song2 = Song.create!(title: "OMG",
                    year_of_release: "2017", artist: artist1)
